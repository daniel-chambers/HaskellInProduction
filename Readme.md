# Haskell in Production - Not just a theory
This repository contains the presentation materials and sample code for the Haskell in Production presentation. Here's the abstract:

> Haskell is often dismissed as a language too academic for practical use in real-world production applications. However, as functional programming becomes more and more popular, and the benefits of static typing, purity and immutability become increasingly apparent, teams are looking for a language that exemplifies these traits; that language is Haskell.

> In this talk we'll take a look at one team's journey from working in F# on .NET into the world of shipping pure, immutable and fully-functional code written in Haskell straight into production on AWS. We'll cover the reasons why we chose Haskell, what advantages it brought us, and the challenges we overcame along our journey.

There's two versions of the slides, one done for NDC Sydney 2016 which was a one hour talk, and one done for DDD Melbourne 2016, which had some things cut from it to fit into 45 minutes.

To get the sample code up and running you will need:

* [Haskell Stack][1] - to compile to code
* [Atom][2] (optional) - to browse the Haskell code
* [IDE-Haskell][3] (optional) - Atom plugin to support Haskell (make sure to read the Requirements section). To install GHC-Mod with Stack, use `stack install ghc-mod`.

To run the property tests, `cd` into the `prop-testing` directory after installing Stack and run `stack setup`. This will install the necessary compiler. Then run `stack test` to run the property tests. 

### Recommended Reading
The [Haskell Programming from First Principles][4] book is highly recommended as a comprehensive introduction into writing and understanding Haskell code and concepts. 

[1]: https://www.haskellstack.org/
[2]: https://atom.io/
[3]: https://github.com/atom-haskell/ide-haskell
[4]: https://haskellbook.com
