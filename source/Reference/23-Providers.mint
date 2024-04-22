module References {
  const PROVIDERS =
    <<#MARKDOWN(highlight)
    # Providers

    > Providers are an advanced topic, they can be tricky to implement
      correctly. If you are unsure, reach out on Discord.

    Providers are entities which components can use as sources of effects (and
    data). By effect, we mean events that happen outside components, for
    example when the size of the window changes or when a key is pressed.

    A provider can have [states], [functions], [computed properties] and
    [constants].

    [computed properties]: /reference/components/computed-properties
    [states]: /reference/state-management
    [constants]: /reference/constants
    [functions]: /reference/functions

    Here you can see a commented simple example - a provider which announces
    when a component subscribes to it or unsubscribes from it:

    ```mint
    // We need to define a custom type for the subscriptions.
    type Greeter.Subscription {
      notify : Function(String)
    }

    // We define the provider to use the subscription type above.
    provider Greeter : Greeter.Subscription {
      fun update {
        // We notify every subscription when it changes.
        for subscription of subscriptions {
          subscription.notify()
        }
      }
    }

    component Subscriber {
      state subscribed : Bool = false

      // The component uses the provider using a subscription,
      // but only if the `subscribed` state is true.
      use Greeter {
        notify: () { Debug.log("I was notified!") }
      } when {
        subscribed
      }

      fun render : Html {
        <button onClick={() { next { subscribed: !subscribed } }}>
          "Toggle Subscription"

          if subscribed {
            " (ON)"
          } else {
            " (OFF)"
          }
        </button>
      }
    }

    component Main {
      fun render : Html {
        <div>
          <Subscriber/>
          <Subscriber/>
        </div>
      }
    }
    ```

    To learn more, check out the [built-in providers] of the standard library.

    [built-in providers]: https://github.com/mint-lang/mint/tree/master/core/source/Provider

    ## Update

    Providers **should have** an `update` function which is called whenever a
    component subscribes to or unsubscribes from the provider.

    This should be used to attach / detach event listeners based on the
    subscribers (for example, there is no need to listen on the resize event
    on the window if nothing uses the provider).

    ### Caveats

    **Don't call functions of subscribers** in the update function because
    it can lead to infinite recursion (a subscription triggers an update which
    in turn calls the subscriber which triggers another update and so on...).

    ## Subscriptions

    A provider has a hidden (as in not defined by the user) `subscriptions`
    state which have this type: `Array(a)` where `a` is the type of the
    subscription. This contains all the current subscribers to the provider.

    MARKDOWN
}
