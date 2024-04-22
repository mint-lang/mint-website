import { stringify } from 'csv-stringify/sync';
import puppeteer from 'puppeteer';

const pages = {};

(async () => {
  // Launch the browser and open a new blank page
  const browser = await puppeteer.launch({ protocolTimeout: 5000, headless: false, defaultViewport: {width: 1920, height: 1080} });
  const page = await browser.newPage();
  const base = 'http://localhost:3000/';

  await page.setDefaultNavigationTimeout(0);

  const detect = async (raw, initiator) => {
    let url = new URL(raw)
    url.hash = ""
    url.search = ""
    url = url.toString()

    if (pages[url]) { return }

    try {
      console.log(url)

      const response = await page.goto(url, { waitUntil: "networkidle0" });
      const title = await page.title()

      const result = {
        status: response.status(),
        initiator: initiator,
        title: title
      }

      console.log(result)
      pages[url] = result;

      if (url.startsWith(base)) {
        console.log(`-> Getting links...`)

        const links = await page.$$("a[href]")
        const hrefs = [];

        for (let link of links) {
          const hrefHandle = await link.getProperty("href")
          const href = await hrefHandle.jsonValue()

          if (!pages[href]) {
            console.log(`    ${href}`)
            hrefs.push(href)
          }
        }

        for (let href of hrefs) {
          await detect(href, url)
        }
      }
    } catch (e) {
      console.error(e)
    }
  }

  await detect(base)
  await browser.close();

  console.log("-------------")
  const rows = [
    ["url", "status", "title", "initiator"]
  ]

  for (let url in pages) {
    const page = pages[url]
    rows.push([url,page.status, page.title, page.initiator])
  }

  console.log(stringify(rows));
})();
