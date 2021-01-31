TODO: add instructions


function f(data)
    data = permutedims(reduce(hcat, collect.(split(data, '\n'))))
    grid = zeros(Bool, size(data)...)
    for i in 1:length(data)
        grid[i] = data[i] == '#'
    end
    grid

    pocket = Dict{NTuple{3, Int64}, Bool}()

    for j in 1:size(grid, 2), i in 1:size(grid, 1)
        pocket[(i, j, 1)] = grid[i, j]
    end

    cycle = 1
    while true
        cycle > 6 && break
        seen = Set{NTuple{3, Int64}}()
        tmp = Dict{NTuple{3, Int64}, Bool}()
        for k in collect(keys(pocket)), n in NEIGHBORS1
            xk, yk, zk = k
            xn, yn, zn = n.I
            push!(seen, (xk + xn, yk + yn, zk + zn))
        end
        for K in seen
            tmp[K] = find_next_state1(pocket, K...)
        end
        for k in keys(tmp)
            pocket[k] = tmp[k]
        end
        cycle += 1
    end
    count(values(pocket))
end

For now, here's a poem about aging by Jenny Joseph:

When I am an old woman I shall wear purple
With a red hat that doesn't go, and doesn't suit me,
And I shall spend my pension
on brandy and summer gloves
And satin sandals,
and say we've no money for butter.
I shall sit down on the pavement when I am tired,
And gobble up samples in shops and press alarm bells,
And run my stick along the public railings,
And make up for the sobriety of my youth.
I shall go out in my slippers in the rain
And pick the flowers in other people's gardens,
And learn to spit.
You can wear terrible shirts and grow more fat,
And eat three pounds of sausages at a go,
Or only bread and pickle for a week,
And hoard pens and pencils and beer mats
and things in boxes.
But now we must have clothes that keep us dry,
And pay our rent and not swear in the street,
And set a good example for the children.
We will have friends to dinner and read the papers.
But maybe I ought to practise a little now?
So people who know me
are not too shocked and surprised,
When suddenly I am old
and start to wear purple! 

