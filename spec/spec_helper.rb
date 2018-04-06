require 'httparty'
require 'rspec'
require_relative 'helpers'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
  expectations.include_chain_clauses_in_custom_matcher_descriptions = true
end

config.mock_with :rspec do |mocks|
  mocks.verify_partial_doubles = true
end

config.shared_context_metadata_behavior = :apply_to_host_groups
config.include Helpers

end

# Gerar Relatório
# rspec --format RspecJunitFormatter --out spec.xml
# rspec --format html --out spec.html

$site = %w{
  extra
  pontofrio
  casasbahia
  barateiro
  pontofrioatacado
  lojafuji
  gotoshop
  lojahp
  lojahpempresas
}

class Carrinho
  include HTTParty

    # implementar depois
    # $site.each do |bandeira|
    #   $base_uri = base_uri "http://Carrinho.#{bandeira}.com.br"
    #   # p $base_uri
    #   # p bandeira

    # end

  # p $base_uri
  # p bandeira
  # p index

  base_uri "http://Carrinho.extra.com.br"

  default_params output:'json'
end

class MeioDePagamento
  include HTTParty
  base_uri "http://api-b2c.extra.com.br"
  default_params output:'json'
end


