
describe('suite de teste') do

    before(:each) do
        puts 'tudo aqui acontece antes do cenário'
    end

    it('novo teste') do
        puts 'executando o caso de teste'
    end

    it('novo teste') do
        puts 'executando o caso de teste 2 '
    end

    it('novo teste') do
        puts 'executando o caso de teste 3'
    end

    after(:all) do
        puts 'tudo aqui acontece depois do cenário'
    end

end