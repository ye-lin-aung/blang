class String
    def myanmar_numbers_to_english
      if self.nil?
        return
      end
      self.gsub("၀","0")
        .gsub("၁","1")
        .gsub("၂","2")
        .gsub("၃","3")
        .gsub("၄","4")
        .gsub("၅","5")
        .gsub("၆","6")
        .gsub("၇","7")
        .gsub("၈","8")
        .gsub("၉","9")
    end
  end
  