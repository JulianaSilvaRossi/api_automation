
describe('status code 200') do

    before(:all) do
        # Carrinho.get(
        #     '/API/Checkout/Carrinho.svc/ObterQtdeProdutos/'
        # )
        # p $base_uri 
    end

    it('ObterQtdeProdutos') do
        @result = Carrinho.get(
            '/API/Checkout/Carrinho.svc/ObterQtdeProdutos/'
        )
        # p Carrinho.base_uri
        expect(@result.response.code).to eql '200'
        expect(@result.parsed_response).to eql 0
    end

    it('ListarFreteEntregaTipoHabilitada') do
        @result = Carrinho.get(
            '/API/Checkout/Carrinho.svc/TiposEntrega/'
        )
        
        expect(@result.response.code).to eql '200'
        # expect(@result.parsed_response).to eql 0
    end

    it('ObterQuantidadeSkusNoCarrinho') do
        @result = Carrinho.get(
            '/API/Checkout/Carrinho.svc/QuantidadeSkusNoCarrinho/'
        )
        
        expect(@result.response.code).to eql '200'
    end


    after(:each) do |example|
        p @result.parsed_response if example.exception
    end

end