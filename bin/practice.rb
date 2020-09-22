a=[2,4,8]
b=[[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,9]]

def check_win(y, t)
    y.length.times do |item|
        return true if y[item].all?{|x| t.include?(x)}
    end
    return false
end
puts check(b, a)

