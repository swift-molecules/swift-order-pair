# Order Pair

Payload alias integrating
[`swift-order`](https://github.com/swift-atoms/swift-order) and
[`swift-pair`](https://github.com/swift-atoms/swift-pair).

The Order atom owns `Order.Monotonicity`, and the Pair atom owns its two-value
carrier. This molecule owns their cross-domain binding:

```swift
extension Order.Monotonicity {
    public typealias Value<Payload: ~Copyable & ~Escapable> =
        Pair<Order.Monotonicity, Payload>
}
```

The alias preserves Pair’s support for noncopyable and nonescapable payloads.

```swift
import Order_Pair

let trend: Order.Monotonicity.Value<Double> = Pair(.increasing, 1.25)
```

## Installation

```swift
dependencies: [
    .package(
        url: "https://github.com/swift-molecules/swift-order-pair.git",
        branch: "main"
    ),
]
```

```swift
.target(
    name: "App",
    dependencies: [
        .product(name: "Order Pair", package: "swift-order-pair"),
    ]
)
```

The package is pre-1.0 and follows the live `main` branches of its atom
dependencies. It requires Swift 6.4 and the Apple 27 platform generation (or a
matching Linux or Windows toolchain).
