module ProcessingStatusMongoid
  # Bundles helper methods
  class Helper
    
    # Little helper that retries a block up to n times, with n being 50 by default.
    # Use this if you expect a block to fail, for example if you have
    # a long running job that might be affected by cursor timeouts, BUT be careful
    # that you resume processing where you last left off, otherwise you would do
    # the same task over and over again.
    def self.run_with_safety(max_errors = 50, &block)
      is_complete = false
      error_counter = 0
        begin
          block.call
          is_complete = true
        rescue => e
          #puts "A possibly expected error occured => #{e}"
          error_counter = error_counter + 1
          #puts "Errors so far #{error_counter} of possibly #{max_errors}"
        end until is_complete || error_counter >= max_errors
    end
  end
end
