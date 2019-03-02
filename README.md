
## Background and Introduction

This is yet another utility library for common lisp. (Several libraries can be found at [cliki](https://cliki.net/utilities). Notable ones besides those include  [Alexandria](http://common-lisp.net/project/alexandria/) and [cl21](https://lispcookbook.github.io/cl-cookbook/cl21.html). There's also [a good discussion on reddit about "fixing" common lisp](https://www.reddit.com/r/lisp/comments/6t6fqs/which_sugared_library_do_common_lispers_prefer/).

I don't think it is good enough yet; therefore, I'm using a personalized name - in case someone comes up with a "God" level library, let them use a good name. (Learnt over reddit that one should give a good name, only after it is proven to be good. And it is reasonable: we don't want to waste good names. :p)

## 1 Min Overview

A lot of libraries lack a "1 min overview". Here's the 1 min-overview: (In fact, this is the only overview.)

#### Packages and exported functions / macros

_digikar-utilities_

- nilp
- make-hash
- make--vector
- join-using
- list-case

_digikar-utilities.logic_

- ->
- <-
- <>
- gen-truth-table

The documentation for each of these can be viewed using `(describe ,symbol-name)`. (Eg. `(describe 'join-using)`.) 

#### Examples


```lisp
    CL-USER> (load "digikar-utilities.lisp")
    ;; some warnings
    T

    CL-USER> (digikar-utilities:make-vector '(1 2 3))
    #(1 2 3)

    CL-USER> (setq myvar 555)
    555

    CL-USER> #(4 5 'a myvar)
    #(4 5 A 555)

    CL-USER> (digikar-utilities:join-using " " '("aa" "b")) ; also works with vectors
    "aa b"

    CL-USER> (digikar-utilities:make-hash '(("a" 1) (5 25)))
    #{"a" 1, 5 25}

    CL-USER> #{"b" 1, 5 "five", "5+6" (+ 5 6), 'a 7, 'myvar myvar}
    #{"b" 1, 5 "five", "5+6" 11, A 7, MYVAR 555}

    CL-USER> #{"one" #{1 2}} ; other combinations also work
    #{"one" #{1 2}}

    CL-USER> (digikar-utilities:list-case '(1 2 3)
                                          ((x y) (+ x y))
	                                  ((x y z) (- (+ x y) z)))
    0
    
    CL-USER> (digikar-utilities.logic:gen-truth-table (a b c) (and a b c))
    
    (A B C) 
    (T T T) T
    (T T NIL) NIL
    (T NIL T) NIL
    (T NIL NIL) NIL
    (NIL T T) NIL
    (NIL T NIL) NIL
    (NIL NIL T) NIL
    (NIL NIL NIL) NIL
    NIL
```
