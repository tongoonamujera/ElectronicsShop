# Advanced Building Blocks - Enumerable Methods

> In this project, I have  implemented my own version of Ruby's enumerable methods.

Covered methods

- #my_each
- #my_each_with_index
- #my_select
- #my_all?
- #my_any?
- #my_none?
- #my_count
- #my_map
- #my_inject
- #multiply_els which multiplies all the elements of the array together by using #my_inject, e.g. multiply_els([2,4,5]) #=> 40

## Built With

- Ruby
-Rails

## Getting Started



Clone

```git
git clone https://github.com/tongoonamujera/ElectronicsShop.git
```

To get a local copy up and running, follow these simple example steps.


1. Open a terminal window and enter `git clone https://github.com/tongoonamujera/ElectronicsShop.git`
2. Make your new cloned directory your active directory
3. Currently, you are in the "main branch."


### Prerequisites

Node installed locally

Yarn installed locally

Ruby installed localy

Ruby on Rails installed locally

### Usage

Use IRB to test the code
#### my_select

```irb
[1,2,3,4,5,6].my_select(&:even?)
=> [2,4,6]
```

#### my_all?

```irb
[1,2,3,4,5,6].my_all?(&:even?)
=> false
```

#### my_any?

```irb
[1,2,3,4,5,6].my_any?(&:odd?)
=> true
```

#### #my_none?

```irb
[1,2,3,4,5,6].my_none?(&:odd?)
=> true
```

#### #my_count

```irb
[1,2,3].my_count
=> 3
[1,2,3].my_count { |x| x > 1}
=> 2
```

#### #my_map

```irb
[1,5].my_map { |x| x * 2 }
=> [2, 10]

[1,2,3,4,5].my_map Proc.new { |x| x * 4 }
=> [4,8,12,16,20]
```

#### #my_inject

```irb
Array(5..10).my_inject(:+)
=> 45
Array(5..10).my_inject { |sum, n| sum + n }
=> 45
```

#### #multiply_els

```irb
arr = [1,2,4,5,6]
multiply_els(arr)
=> 240
```


## Authors
👤 **Tongoona Mujera**

- Github: [@tongoonamujera](https://github.com/tongoonamujera)
- Twitter: [@tongomujera](https://twitter.com/tongomujera)
- Linkedin: [tongoona-mujera](https://www.linkedin.com/in/tongoona-mujera-125604162/)
- Email:  tongoonamujera@gmail.com

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project.!

## 📝 License

This project is [MIT](./MIT.md) licensed.