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
          a<rsub|11><rsup|> \ a<rsub|12<rsup|>><rsup|> \ a<rsub|13><rsup|>
        </cell>>|<row|<cell|a<rsub|21><rsup|> a<rsub|22><rsup|>
        a<rsub|23><rsup|>>>|<row|<cell|a<rsub|31><rsup|> a<rsub|32><rsup|>
        a<rsub|33><rsup|>>>>>>>, where <math|A\<in\>\<bbb-R\><rsup|3\<times\>3>>

        <\equation*>
          f<around*|(|A|)>\<assign\>det<around*|(|A|)>=a<rsub|11>a<rsub|22>a<rsub|33>+a<rsub|12>a<rsub|23>a<rsub|31>+a<rsub|21>a<rsub|32>a<rsub|13>-a<rsub|31>a<rsub|22>a<rsub|13>-a<rsub|32>a<rsub|23>a<rsub|11>-a<rsub|21>a<rsub|12>a<rsub|33>
        </equation*>

        Then the <math|f<around*|(|a|)>> is a homogeneous polynomilal of
        degree 3.

        For <math|k\<times\>k >matrix <math|A<rsup|k>>, aussume
        <math|f<around*|(|A<rsup|k>|)>> is a homogeneous polynomilal of
        degree <math|k>

        <\equation*>
          f<around*|(|A<rsup|k>|)>:=det<around*|(|A<rsup|k>|)>=
          a<rsub|11>\<cdot\><det|<tformat|<table|<row|<cell|
          <tabular|<tformat|<cwith|1|1|1|1|cell-hyphen|t>|<table|<row|<\cell>
            a<rsub|22>
          </cell>>>>><tabular|<tformat|<table|<row|<cell|\<ldots\>>>>>><tabular|<tformat|<table|<row|<cell|a<rsub|2k>>>>>>>>|<row|<cell|\<ldots\>>>|<row|<cell|<tabular|<tformat|<cwith|1|1|1|1|cell-hyphen|t>|<table|<row|<\cell>
            a<rsub|k2>
          </cell>>>>><tabular|<tformat|<table|<row|<cell|\<ldots\>>>>>><tabular|<tformat|<table|<row|<cell|a<rsub|kk>>>>>>>>>>>-a<rsub|12><det|<tformat|<table|<row|<cell|
          <tabular|<tformat|<cwith|1|1|1|1|cell-hyphen|t>|<table|<row|<\cell>
            a<rsub|21>
          </cell>>>>><tabular|<tformat|<table|<row|<cell|\<ldots\>>>>>><tabular|<tformat|<table|<row|<cell|a<rsub|2k>>>>>>>>|<row|<cell|\<ldots\>>>|<row|<cell|<tabular|<tformat|<cwith|1|1|1|1|cell-hyphen|t>|<table|<row|<\cell>
            a<rsub|k1>
          </cell>>>>><tabular|<tformat|<table|<row|<cell|\<ldots\>>>>>><tabular|<tformat|<table|<row|<cell|a<rsub|kk>>>>>>>>>>>+\<cdots\>+a<rsub|1k><det|<tformat|<table|<row|<cell|
          <tabular|<tformat|<cwith|1|1|1|1|cell-hyphen|t>|<table|<row|<\cell>
            a<rsub|21>
          </cell>>>>><tabular|<tformat|<table|<row|<cell|\<ldots\>>>>>><tabular|<tformat|<table|<row|<cell|a<rsub|2<around*|(|k-1|)>>>>>>>>>|<row|<cell|\<ldots\>>>|<row|<cell|<tabular|<tformat|<cwith|1|1|1|1|cell-hyphen|t>|<table|<row|<\cell>
            a<rsub|k1>
          </cell>>>>><tabular|<tformat|<table|<row|<cell|\<ldots\>>>>>><tabular|<tformat|<table|<row|<cell|a<rsub|k<around*|(|k-1|)>>>>>>>>>>>>
        </equation*>

        For <math|<around*|(|k+1|)>\<times\><around*|(|k+1|)> >matrix
        <math|A>

        <\equation*>
          f<around*|(|A<rsup|k+1>|)>:=det<around*|(|A<rsup|k+1>|)>=
          f<around*|(|A<rsup|k>|)>+a<rsub|1<around*|(|k+1|)>><det|<tformat|<table|<row|<cell|
          <tabular|<tformat|<cwith|1|1|1|1|cell-hyphen|t>|<table|<row|<\cell>
            a<rsub|21>
          </cell>>>>><tabular|<tformat|<table|<row|<cell|\<ldots\>>>>>><tabular|<tformat|<table|<row|<cell|a<rsub|2<around*|(|k|)>>>>>>>>>|<row|<cell|\<ldots\>>>|<row|<cell|<tabular|<tformat|<cwith|1|1|1|1|cell-hyphen|t>|<table|<row|<\cell>
            a<rsub|k1>
          </cell>>>>><tabular|<tformat|<table|<row|<cell|\<ldots\>>>>>><tabular|<tformat|<table|<row|<cell|a<rsub|k<around*|(|k|)>>>>>>>>>>>>
        </equation*>

        We can know that <math|f<around*|(|A<rsup|k+1>|)>> is a homogeneous
        polynomilal of degree <math|k+1>.

        Therefore by induction, <math|det:\<bbb-R\><rsup|n\<times\>n>\<rightarrow\>\<bbb-R\>>
        is a homogeneous polynomial of degree <math|n>.

        Hence, <math|f> is a linear homogeneous polynomial function from
        <math|\<bbb-R\><rsup|n\<times\>n >>, then the function <math|det> is
        also a continuous function
      </answer*>

      \;

      \;

      \;

      \;

      \;

      (b) Denote <math|GL<around*|(|n,\<bbb-R\>|)>\<subset\>\<bbb-R\><rsup|n\<times\>n>>
      as the set of all <math|n\<times\>n> invertible matrices. Use preimage
      <math|det<rsup|-1>> to explain why it is an open set inside
      <math|\<bbb-R\><rsup|n\<times\>n>>. <em|[This says that invertible
      matrices stays invertible after some small change to its entries.]>

      <\answer*>
        \;

        \;

        Because <math|GL<around*|(|n,\<bbb-R\>|)>> as the set of all
        <math|n\<times\>n> invertible matrices, the
        <math|\<forall\>A\<in\>GL<around*|(|n,\<bbb-R\>|)>>,

        <\equation*>
          det<around*|(|A|)>\<neq\>0.
        </equation*>

        Then because <math|\<bbb-R\>-0> is a open set,
        <math|<around*|{||\<nobracket\>>A=det<rsup|-1><around*|(|0|}> >is
        also a open set.\ 

        Therefore <math|GL<around*|(|n,\<bbb-R\>|)>>is an open set inside
        <math|\<bbb-R\><rsup|n\<times\>n>>

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

        In HW1 Ex5 we can know for metric space
        <math|<around*|(|M,d|)>,<around*|{|x<rsub|n>|}>>coverging to <math|x>
        and <math|<around*|{|y<rsub|n>|}>>converging to <math|y>

        <\equation*>
          lim<rsub|n\<rightarrow\>\<infty\>>d<around*|(|x<rsub|n>,y<rsub|n>|)>=d<around*|(|x,y|)>
        </equation*>

        Then, when <math|<around*|{|x<rsub|n>|}>> coverging to <math|x>
        <math|\<Longrightarrow\>x<rsub|n>\<rightarrow\>\<infty\>>, we fix
        <math|y\<in\>M>,

        <\equation*>
          lim<rsub|n\<rightarrow\>\<infty\>>d<around*|(|x<rsub|n>,y<rsub|>|)>=d<around*|(|x,y|)>\<Longrightarrow\>lim<rsub|n\<rightarrow\>\<infty\>>f<around*|(|x<rsub|n>|)>=f<around*|(|x|)>
        </equation*>

        Therefore <math|f<around*|(|x|)>=d<around*|(|x,y|)>> is a continuos

        \;
      </answer*>

      \;

      \;

      \;

      \;

      \;

      \;

      \;

      (b) Use (a) to give another short proof of HW2 Ex3: for any
      <math|y\<in\>M> and <math|r\<gtr\>0>, <math|B<rsub|r><around*|(|y|)>>
      is open in <math|M> and <math|<wide|B<rsub|r>|\<bar\>><around*|(|y|)>=<around*|{|x\<in\>M:d<around*|(|x,y|)>\<leqslant\>r|}>>
      is closed in <math|M>.

      <\answer*>
        \;

        <math|<wide|B<rsub|r>|\<bar\>><around*|(|y|)>=<around*|{|x\<in\>M:d<around*|(|x,y|)>\<leqslant\>r|}>>

        By (a), when <math|<around*|{|x<rsub|n>|}>\<in\><wide|B<rsub|r>|\<bar\>><around*|(|y|)>,>
        <math|<around*|{|x<rsub|n>|}>> converging to
        <math|x\<in\>M\<Longrightarrow\>x<rsub|n>\<rightarrow\>\<infty\>>, we
        fix <math|y\<in\>M>.\ 

        Since,

        <\equation*>
          d<around*|(|x<rsub|n>,y|)>\<leqslant\>r\<Longrightarrow\>lim<rsub|n\<rightarrow\>\<infty\>>d<around*|(|x<rsub|n>,y|)>=d<around*|(|x,y|)>\<leqslant\>r
        </equation*>

        Therefore, <math|x\<in\><wide|B<rsub|r>|\<bar\>><around*|(|y|)>\<Longrightarrow\><wide|B<rsub|r>|\<bar\>><around*|(|y|)>\<subset\>M>.
        By definition, <math|<wide|B<rsub|r>|\<bar\>><around*|(|y|)>><math|>
        is closed in <math|M>.

        Because <math|<wide|B<rsub|r>|\<bar\>><around*|(|y|)>=<around*|(|B<rsub|r><around*|(|y|)>|)><rsup|c>>
        is closed in <math|M>, then <math|B<rsub|r><around*|(|y|)>\<subset\>M>
        is open in <math|M>.
      </answer*>
    </exercise>

    \;

    \;

    \;

    \;

    \;

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

        Let <math|x<rsub|<rsub|i>>=-a-<frac|1|i>,y<rsub|<rsub|i>>=-<frac|1|i>>,
        then for

        <\equation*>
          lim<rsub|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>,y<rsub|i>|)>=<around*|(|-a,0|)>\<Longrightarrow\>lim<rsub|i\<rightarrow\>\<infty\>>Arg<around*|(|x<rsub|i>,y<rsub|i>|)>=Arg<around*|(|-a,0|)>=-\<pi\>
        </equation*>

        But <math|Arg<around*|(|-a,0|)>=\<pi\>\<neq\>-\<pi\>>

        Then \ <math|Arg> is not continuous on the negative <math|x> axis.
      </answer*>

      (b) Find an open set <math|U> in <math|\<bbb-R\>> such that
      <math|Arg<rsup|-1><around*|(|U|)>> is not open in
      <math|\<bbb-R\><rsup|2>-\<b-0\>>. Again conclude that <math|Arg> is not
      a continuous function.

      <\answer*>
        \;

        Let <math|U=<around*|(|0,\<pi\>+<frac|1|n>|)>>, then
        <math|Arg<rsup|-1><around*|(|U|)>=<around*|(|<around*|{|r,r\<neq\>0|}>,<around*|(|0,\<pi\>|]>|)>>

        <math|Arg<rsup|-1><around*|(|U|)>> is not open in
        <math|\<bbb-R\><rsup|2>-\<b-0\>>

        <math|Arg> is not a continuous function.
      </answer*>
    </exercise>

    \;

    <\exercise>
      Let <math|l<rsup|1>=<around*|{|\<b-a\>=<around*|(|a<rsub|1>,a<rsub|2>,\<ldots\>|)>:<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<less\>\<infty\>|}>>
      be the set of all absolutely summable sequences, with <math|l<rsup|1>>
      metric given by <math|d<around*|(|\<b-a\>,\<b-b\>|)>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>-b<rsub|i>|\|>>.

      (a) Explain why the subset <math|S=<around*|{|\<b-a\>\<in\>l<rsup|1>:<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<leqslant\>1|}>>
      is closed and bounded in <math|l<rsup|1>>. (Hint: BALL.)

      <\answer*>
        \;

        <\enumerate-roman>
          <item>Let <math|\<b-a\><rsub|n>\<in\>S> where
          <math|<around*|{|\<b-a\><rsub|n>|}>> is converging to
          <math|\<b-a\>>, <math|\<b-a\><rsub|n>=<around*|(|a<rsub|n1>,a<rsub|n2>,\<ldots\>|)>,\<b-a\>=<around*|(|a<rsub|1>,a<rsub|2>,\<ldots\>|)>>.

          Then we fix <math|y\<in\>S>, for
          <math|r\<gtr\>0,B<rsub|r><around*|(|y|)>\<subset\>S,B<rsub|r><around*|(|y|)>=<around*|{|\<b-a\><rsub|n>\<in\>S,d<around*|(|\<b-a\><rsub|n>,y|)>\<leqslant\>r|}>>\ 

          <\equation*>
            lim<rsub|n\<rightarrow\>\<infty\>>d<around*|(|\<b-a\><rsub|n>,y|)>=lim<rsub|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|n
            i>-y<rsub|i>|\|>\<leqslant\>r\<Longrightarrow\><big|sum><rsub|i=1><rsup|\<infty\>><around*|\||lim<rsub|n\<rightarrow\>\<infty\>>a<rsub|n
            i>-y<rsub|i>|\|>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>-y<rsub|i>|\|>=d<around*|(|\<b-a\>,y|)>\<leqslant\>r
          </equation*>

          Therefore, <math|\<b-a\>\<in\>B<rsub|r><around*|(|y|)>\<Longrightarrow\>S>
          is closed in <math|l<rsup|1>>

          <item>Let <math|z=<around*|(|0,0,\<ldots\>|)>\<in\>l<rsup|1>=<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<less\>\<infty\>|}>>

          <\equation*>
            \<forall\>a\<in\>S=<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<leqslant\>1|}>,d<around*|(|a,z|)>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|n>-z<rsub|n>|\|>=<big|sum><rsub|n=1><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<leqslant\>1
          </equation*>

          then, <math|S> is bounded in <math|l<rsup|1>>
        </enumerate-roman>

        Combine the <math|i> and <math|ii>, <math|S> is closed in
        <math|l<rsup|1>.>
      </answer*>

      \;

      (b) Consider a sequence <math|<around*|{|e<rsup|<around*|(|k|)>>|}><rsub|k=1><rsup|\<infty\>>>,
      where <math|e<rsup|<around*|(|i|)>><rsub|j>=\<delta\><rsub|i
      j>=<choice|<tformat|<table|<row|<cell|1>|<cell|if
      i=j>>|<row|<cell|0>|<cell|otherwise>>>>>>. Write down
      <math|e<rsup|<around*|(|1|)>>,e<rsup|<around*|(|2|)>>,e<rsup|<around*|(|3|)>>>,
      and evaluate <math|d<around*|(|e<rsup|<around*|(|i|)>>,e<rsup|<around*|(|j|)>>|)>>
      for <math|i\<neq\>j>.

      <\answer*>
        \;

        <\equation*>
          e<rsup|<around*|(|1|)>>=\<delta\><rsub|j>=<choice|<tformat|<table|<row|<cell|1>|<cell|if
          j=1>>|<row|<cell|0>|<cell|otherwise>>>>>=<around*|{|1,0,0,\<ldots\>|}>
        </equation*>

        <\equation*>
          e<rsup|<around*|(|2|)>>=\<delta\><rsub|j>=<choice|<tformat|<table|<row|<cell|1>|<cell|if
          j=2>>|<row|<cell|0>|<cell|otherwise>>>>>=<around*|{|0,1,0,\<ldots\>|}>
        </equation*>

        <\equation*>
          e<rsup|<around*|(|3|)>>=\<delta\><rsub|j>=<choice|<tformat|<table|<row|<cell|1>|<cell|if
          j=3>>|<row|<cell|0>|<cell|otherwise>>>>>=<around*|{|0,0,1,\<ldots\>|}>
        </equation*>

        <\equation*>
          d<around*|(|e<rsup|<around*|(|i|)>>,e<rsup|<around*|(|j|)>>|)>=2
        </equation*>
      </answer*>

      (c) Explain why the closed and bounded set <math|S> above is NOT
      sequentially compact.

      <\answer*>
        \;

        Because in (b) each sequence <math|<around*|{|e<rsup|<around*|(|k|)>>|}><rsub|k=1><rsup|\<infty\>>>
        is closed and bounded in <math|<around*|[|0,1|]>>,\ 

        but suppose \ <math|A=<around*|{|e<rsup|<around*|(|k|)>>|}><rsub|k=1><rsup|\<infty\>>>,
        <math|A> is not a sequentially compact, because <math|A> didn't have
        convergent subsequence

        Therefore for set <math|S=<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<leqslant\>1|}>>
        above can also look like <math|A> which have not a convergent
        subseqence.

        Then <math|S> above is not sequentially compact.
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

        Because <math|1\<leqslant\>p,q> , the function
        <math|f<around*|(|<math-bf|x>|)>=<around*|\<\|\|\>|<math-bf|x>|\<\|\|\>><rsub|p>>
        is continuous and the set <math|S=<around*|{|<math-bf|x>\<in\>\<bbb-R\><rsup|n>:<around*|\<\|\|\>|<math-bf|x>|\<\|\|\>><rsub|q>=1|}>>
        is compact,

        therefore the set <math|<around*|{|f<around*|(|<math-bf|x>|)>=<around*|\<\|\|\>|<math-bf|x>|\<\|\|\>><rsub|p>|}>><math|>
        is also compact and we can attains maximum and minmum.
      </answer*>
    </exercise>
  </shown>>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>