
def reverse(some_list):
  acc = List/Nil
  fold some_list with acc:
    case List/Nil:
      return acc
    case List/Cons:
      # This means that we call this fold again, this time
      # with some_list.tail as "some_list", and List/Cons {head:some_list.head, tail: acc} as acc
      return some_list.tail(List/Cons {head:some_list.head, tail: acc})

def main():
  return reverse([1,2,3])
