type Provider.Interval {
  ticks : Function(Promise(Void)),
  interval : Number,
  id : String
}

provider Provider.Interval : Provider.Interval {
  state ids : Map(String, Number) = Map.empty()

  fun process (id : String) {
    () {
      for subscription of subscriptions {
        subscription.ticks()
      } when {
        subscription.id == id
      }
    }
  }

  fun update {
    for subscription of subscriptions {
      if let Nothing = Map.get(ids, subscription.id) {
        let id =
          `setInterval(#{process(subscription.id)}, #{subscription.interval})`

        process(subscription.id)()
        next { ids: Map.set(ids, subscription.id, id) }
      }
    }

    for id, value of ids {
      let subscription =
        Array.find(subscriptions,
          (subscription : Provider.Interval) { subscription.id == id })

      if let Nothing = subscription {
        `clearInterval(#{value})`
        next { ids: Map.delete(ids, id) }
      }
    }
  }
}
