module ApartmentsHelper

  def calc_price apartment
    num = 0
    count = 0
    apartment.post.each do |post|
      count += 1
      num += post.p_ref_fee
    end
    if(count == 0)
      0
    else
      num/count
    end
  end
end
