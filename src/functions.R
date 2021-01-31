TODO: I'm not important

part1(data = readInput()) = nothing

part2(data = readInput()) = nothing

testInput() = """..##.......
#...#...#..
.#....#..#.
..#.#...#.#
.#...##..#.
..#.##.....
.#.#.#....#
.#........#
#.##...#...
#...##....#
.#..#...#.#"""

function tree_map(data=testInput)
    lines = split(strip(data), '\n')
    width = length(lines[1])
    map(lines) do line
        [x == '.' ? 0 : 1 for x in line]
    end
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

