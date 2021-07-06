pragma solidity ^0.8.4;

    contract pregao {
        
        address public beneficiary; // beneficiario é a SECRETARIA DE JUSTIÇA
        uint limite_time_to_interact_with_aucion; // limite para interagir no pregao (30 minutos);
        
        struct oferta {
            string nomeDoOfertante; // nome do licitante
            uint valorProposta; // menor lance/proposta
            address enderecoDoOfertante; // endereço do licitante
            
        }
            oferta public primeiroLicitante;   
            oferta public segundoLicitante;
            oferta public terceiroLicitante;
            
            address vencedor;
            
        constructor(){
            
            licitantes[0].nomeDoOfertante = "JEFF";
            licitantes[1].nomeDoOfertante = "GIRÃO";
            licitantes[2].nomeDoOfertante = "NATHALY";
            licitantes[3].nomeDoOfertante = "BERG";
        }
        
        constructor(address beneficiary_, uint limit_time){
            beneficiary = beneficiary_;
            limite_time_to_interact_with_aucion = block.timestamp + limit_time; // limite de tempo 
            
    }
        // msg.sender = ofertante
        function bid() external payable {
            // msg do valor // menor oferta em real
            require(msg.value < 100);
            
            if( msg.value > lowest_bid_bid){
                
                nomeDoOfertante = msg.sender;
                valorProposta = msg.value;
            
        }
            require(msg.value > best_bidder);
}
