@_exported public import Order
@_exported public import Pair

extension Order.Monotonicity {

    public typealias Value<Payload: ~Copyable & ~Escapable> = Pair<Order.Monotonicity, Payload>
}
