# City Temperature Reporter

This is a kata for thinking about how we might stub a program's call to an external API. Inspiration for it came from [another kata](https://github.com/MA-Codejam/round-three-feb-20), originally conceived for a Makers Academy CodeJam. See that kata's readme for a description of the problem.

=)
*Ptolemy*

## Usage.

Let's use IRB to sketch out the public interface of our classes. This seems to make sense to me:

```pry
pry(main)> london = TemperatureReporter.new city: 'London', data_source: Weatherman.new
pry(main)> london.current_temperature
=> 22
```

I am using Ruby's [keyword syntax](https://robots.thoughtbot.com/ruby-2-keyword-arguments)
