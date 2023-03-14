<TeXmacs|2.1.1>

<style|beamer>

<\body>
  <screens|<\shown>
    <\exercise>
      Consider <math|\<bbb-R\><rsup|n\<times\>n>> to be the space of
      <math|n\<times\>n> real matrices, with
      <math|<around*|\<\|\|\>|\<bullet\>|\<\|\|\>><rsub|\<infty\>>> norm.
      Each matrix's \Pcoordinates\Q are its entries <math|a<rsub|i j>>.

      (a) Let <math|det:\<bbb-R\><rsup|n\<times\>n>\<rightarrow\>\<bbb-R\>>
      be the determinant function. Briefly explain (using induction, or just
      explain the <math|3\<times\>3> case) why <math|det> can be written as a
      homogeneous polynomial of degree <math|n> in the variables
      <math|a<rsub|i j>>. Conclude that <math|det> is a continuous function.

      <\answer*>
        \;

        For a <math|3\<times\>3> matrix <math|A=<matrix|<tformat|<cwith|1|1|1|1|cell-hyphen|t>|<table|<row|<\cell>
          a<rsub|11> \ a<rsub|12> \ a<rsub|13>
        </cell>>|<row|<cell|a<rsub|21> a<rsub|22>
        a<rsub|23>>>|<row|<cell|a<rsub|31> a<rsub|32> a<rsub|33>>>>>>>, then
        <math|det<around*|(|A|)>=>
      </answer*>

      (b) Denote <math|GL<around*|(|n,\<bbb-R\>|)>\<subset\>\<bbb-R\><rsup|n\<times\>n>>
      as the set of all <math|n\<times\>n> invertible matrices. Use preimage
      <math|det<rsup|-1>> to explain why it is an open set inside
      <math|\<bbb-R\><rsup|n\<times\>n>>. <em|[This says that invertible
      matrices stays invertible after some small change to its entries.]>

      <\answer*>
        \;
      </answer*>
    </exercise>

    <\exercise>
      \;

      (a) Use the result of HW1 Ex5 to explain why in any metric space
      <math|<around*|(|M,d|)>>, for any fixed <math|y\<in\>M>, the function
      <math|f:M\<rightarrow\>\<bbb-R\>>, <math|f<around*|(|x|)>=d<around*|(|x,y|)>>
      is a continuous function.

      <\answer*>
        \;
      </answer*>

      (b) Use (a) to give another short proof of HW2 Ex3: for any
      <math|y\<in\>M> and <math|r\<gtr\>0>, <math|B<rsub|r><around*|(|y|)>>
      is open in <math|M> and <math|<wide|B<rsub|r>|\<bar\>><around*|(|y|)>=<around*|{|x\<in\>M:d<around*|(|x,y|)>\<leqslant\>r|}>>
      is closed in <math|M>.

      <\answer*>
        \;
      </answer*>
    </exercise>

    \;

    <\exercise>
      <em|Showing discontinuity>. Let <math|Arg:\<bbb-R\><rsup|2>-\<b-0\>\<rightarrow\>\<bbb-R\>>
      be defined such that if the polar coordinate of
      <math|<around*|(|x,y|)>> is <math|<around*|(|r,\<theta\>|)>> with
      <math|-\<pi\>\<less\>\<theta\>\<leqslant\>\<pi\>>, then
      <math|Arg<around*|(|x,y|)>\<assign\>\<theta\>>. Fix a point
      <math|p=<around*|(|-a,0|)>> on the negative <math|x> axis
      <math|<around*|(|a\<gtr\>0|)>>.

      (a) Explicitly construct a sequence of points
      <math|<around*|{|<around*|(|x<rsup|<around*|(|i|)>>,y<rsup|<around*|(|i|)>>|)>|}>>
      in <math|\<bbb-R\><rsup|2>-\<b-0\>> converging to
      <math|p=<around*|(|-a,0|)>>, but with
      <math|lim<rsub|i\<rightarrow\>\<infty\>>Arg<around*|(|x<rsup|<around*|(|i|)>>,y<rsup|<around*|(|i|)>>|)>\<neq\>Arg<around*|(|-a,0|)>>.
      Conclude that <math|Arg> is not continuous on the negative <math|x>
      axis.

      <\answer*>
        \;
      </answer*>

      (b) Find an open set <math|U> in <math|\<bbb-R\>> such that
      <math|Arg<rsup|-1><around*|(|U|)>> is not open in
      <math|\<bbb-R\><rsup|2>-\<b-0\>>. Again conclude that <math|Arg> is not
      a continuous function.

      <\answer*>
        \;
      </answer*>
    </exercise>

    <\exercise>
      Let <math|l<rsup|1>=<around*|{|\<b-a\>=<around*|(|a<rsub|1>,a<rsub|2>,\<ldots\>|)>:<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<less\>\<infty\>|}>>
      be the set of all absolutely summable sequences, with <math|l<rsup|1>>
      metric given by <math|d<around*|(|\<b-a\>,\<b-b\>|)>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>-b<rsub|i>|\|>>.

      (a) Explain why the subset <math|S=<around*|{|\<b-a\>\<in\>l<rsup|1>:<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<leqslant\>1|}>>
      is closed and bounded in <math|l<rsup|1>>. (Hint: BALL.)

      <\answer*>
        \;
      </answer*>

      (b) Consider a sequence <math|<around*|{|e<rsup|<around*|(|k|)>>|}><rsub|k=1><rsup|\<infty\>>>,
      where <math|e<rsup|<around*|(|i|)>><rsub|j>=\<delta\><rsub|i
      j>=<choice|<tformat|<table|<row|<cell|1>|<cell|if
      i=j>>|<row|<cell|0>|<cell|otherwise>>>>>>. Write down
      <math|e<rsup|<around*|(|1|)>>,e<rsup|<around*|(|2|)>>,e<rsup|<around*|(|3|)>>>,
      and evaluate <math|d<around*|(|e<rsup|<around*|(|i|)>>,e<rsup|<around*|(|j|)>>|)>>
      for <math|i\<neq\>j>.

      <\answer*>
        \;
      </answer*>

      (c) Explain why the closed and bounded set <math|S> above is NOT
      sequentially compact.

      <\answer*>
        \;
      </answer*>
    </exercise>

    <\exercise>
      In one sentence, without doing calculations, show that if
      <math|1\<leqslant\>p,q,> the set <math|S=<around*|{|<math-bf|x>\<in\>\<bbb-R\><rsup|n>:<around*|\<\|\|\>|<math-bf|x>|\<\|\|\>><rsub|q>=1|}>>
      is compact, and the (objective) function
      <math|f<around*|(|<math-bf|x>|)>=<around*|\<\|\|\>|<math-bf|x>|\<\|\|\>><rsub|p>>
      attains maximum and minimum value on (the constraint set) <math|S>.

      <\answer*>
        \;
      </answer*>
    </exercise>
  </shown>>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>