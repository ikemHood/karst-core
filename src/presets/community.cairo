#[starknet::contract]
pub mod KarstCommunity {
    use starknet::ContractAddress;
    use karst::community::community::CommunityComponent;
    use karst::jolt::jolt::JoltComponent;
    use openzeppelin::access::ownable::OwnableComponent;

    component!(path: CommunityComponent, storage: community, event: CommunityEvent);
    component!(path: JoltComponent, storage: jolt, event: JoltEvent);
    component!(path: OwnableComponent, storage: ownable, event: OwnableEvent);

    #[abi(embed_v0)]
    impl communityImpl = CommunityComponent::KarstCommunity<ContractState>;
    impl communityPrivateImpl = CommunityComponent::Private<ContractState>;
    impl joltPrivateImpl = JoltComponent::Private<ContractState>;

    #[storage]
    struct Storage {
        #[substorage(v0)]
        community: CommunityComponent::Storage,
        #[substorage(v0)]
        jolt: JoltComponent::Storage,
        #[substorage(v0)]
        ownable: OwnableComponent::Storage
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    enum Event {
        #[flat]
        CommunityEvent: CommunityComponent::Event,
        #[flat]
        JoltEvent: JoltComponent::Event,
        #[flat]
        OwnableEvent: OwnableComponent::Event
    }

    #[constructor]
    fn constructor(ref self: ContractState, community_nft_classhash: felt252, owner: ContractAddress) {
        self.community._initializer(community_nft_classhash);
        self.jolt._initializer(owner);
    }
}
