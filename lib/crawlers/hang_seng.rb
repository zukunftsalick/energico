module Crawlers
	class	HangSeng
		include Wombat::Crawler

		base_url 'https://bank.hangseng.com'
		path '/1/2/rates/foreign-currency-tt-exchange-rates/tt-exchange-rates'


		currencies 'css=.rvp_rateTable>tbody>tr', :iterator do
    	code 'css=td[2]'
    	buy 'css=/td[3]'
    	sell 'css=/td[4]'
  	end

		def self.crawl
			results = self.new.crawl
			results['currencies'].delete_at(0)
			results['currencies']
		end
	end
end
