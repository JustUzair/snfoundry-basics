mod tests {
    // use starknet::ContractAddress;
    use snforge_std::{declare, ContractClassTrait, DeclareResultTrait};
    use starknet_snfoudry_basics::simple_contract::{
        ISimpleContractDispatcher, ISimpleContractDispatcherTrait
    };

    use starknet_snfoudry_basics::simple_vault::ISimpleVaultDispatcher;
    use starknet_snfoudry_basics::simple_vault::ISimpleVaultDispatcherTrait;
    use starknet_snfoudry_basics::simple_vault::ISimpleVaultSafeDispatcher;
    use starknet_snfoudry_basics::simple_vault::ISimpleVaultSafeDispatcherTrait;


    #[test]
    fn call_and_invoke_vault() {
        // First declare and deploy a contract
        let contract = declare("SimpleVault").unwrap().contract_class();
        // Alternatively we could use `deploy_syscall` here
        let (contract_address, _) = contract.deploy(@array![1]).unwrap();
        println!("Contract address is: {:?}", contract_address);
        // Create a Dispatcher object that will allow interacting with the deployed contract
        let dispatcher = ISimpleVaultDispatcher { contract_address };

        // Call a view function of the contract
        let version = dispatcher.get_vault_version();
        println!("version: {:?}", version);
    }
}

