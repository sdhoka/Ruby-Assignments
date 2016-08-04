# Table of contents using array
line_width = 40

my_array = ["#{"Table of Contents\n".center(line_width + 9) }", "#{"Chapter 1: Numbers".ljust(line_width)} page 1",
            "#{"Chapter 2: Letters".ljust(line_width)} page 72", "#{"Chapter 3: Variables".ljust(line_width)} page 118"]

my_array.each{ |text| puts text }
