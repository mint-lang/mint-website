component Main {
  state count : Number = 0

  fun render {
    <div>
      <input type="number" value="#{count}" readOnly={true}/>
      <button onClick={() { next { count: count + 1 } }}>"Count"</button>
    </div>
  }
}
