auto generated tests
testEtherscanContractLinks621
	|contract|
	contract := self class fetchEtherscanContractFrom: 'https://etherscan.io/address/0xC0c74e811cC703eFe57892cd789D888DEda6d8A0#code'. 
	SolidityParserTest new parseTest: contract.