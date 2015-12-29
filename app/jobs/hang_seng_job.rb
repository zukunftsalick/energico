class HangSengJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    Crawlers::HangSeng.crawl.each do |currency|
      Currency.create(currency)
    end
  end
end
