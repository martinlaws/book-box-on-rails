module Goodreads
  def load_goodreads
    @goodreads = Goodreads.new(:api_key => 'uyVJPIws26NHClSoVm9Vw')
    @goodreads.save
  end
end
