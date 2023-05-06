function fitness = fun(x, weights, scores, W)
    current_weight = x*weights;
    k = max(scores./weights) + 1;
    penalty = k*(current_weight - W);
    
    if current_weight > W
        fitness = -x * scores + penalty;
    else
        fitness = -x * scores;
    end
end
