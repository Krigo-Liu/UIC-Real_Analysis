<TeXmacs|2.1.3>

<style|beamer>

<\body>
  <screens|<\shown>
    <em|Real Analysis> (2-27 notes, overview)

    <\itemize>
      <item>(Last semester: \Pcalculus on 1 real variable\Q: continuity,
      limit, differentiation<text-dots>

      <item>Riemann integrals<text-dots> (Fundamental theorem of
      calculus<text-dots>)

      <item>what about <math|f:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>>?

      <item>Sequences of real numbers: convergence; bounded; limit; Cauchy
      sequence<text-dots>

      <item>Topics according to historic development and depth:

      Calculus (differential, integral) \U\<gtr\>Mathematical
      analysis\U\<gtr\>Real analysis-\<gtr\>measure theory, functional
      analysis, <text-dots>
    </itemize>

    <hrule>

    Example: limit of a sequence (of real numbers)

    <\itemize>
      <item>Sequence: \Pfunction whose domain is the set of natural numbers
      <math|\<bbb-N\>>\Q: <math|<around*|{|a<rsub|n>|}>>

      <item>Example: <math|a<rsub|n>=<frac|cos<rsup|2> n|ln n+2>> is a
      sequence of real numbers.

      <em|Question>: show that <math|a<rsub|n>> converges to <math|0> (as
      <math|n\<rightarrow\>\<infty\>>): <math|lim<rsub|n\<rightarrow\>\<infty\>>
      a<rsub|n>=0>

      <item>Show this using <math|\<varepsilon\>-\<delta\>> definition:

      <item>Definition: <math|a<rsub|n>\<rightarrow\>a>
      (<math|lim<rsub|n\<rightarrow\>\<infty\>> a<rsub|n>=a>) if: for all
      <math|\<varepsilon\>\<gtr\>0>, there exists natural number <math|N>
      such that whenever <math|n\<geqslant\>N>,
      <math|<around*|\||a<rsub|n>-a|\|>\<less\>\<varepsilon\>>.

      <item>Proof:\ 

      <\equation*>
        \ <around*|\||<frac|cos<rsup|2> n|ln n+2>-0|\|>\<leqslant\><frac|1|ln
        n>\<less\>\<varepsilon\>
      </equation*>

      happens whenever: <math|ln n\<gtr\>1/\<varepsilon\>>;
      <math|n\<gtr\>e<rsup|1/\<varepsilon\>>>.\ 

      Therefore, for any <math|\<varepsilon\>\<gtr\>0>, we choose
      <math|N\<gtr\>e<rsup|1/\<varepsilon\>>>, then whenever
      <math|n\<geqslant\>N,<around*|\||a<rsub|n>-0|\|>\<less\>\<varepsilon\>>
      as required. (Therefore we have shown that
      <math|lim<rsub|n\<rightarrow\>\<infty\>> a<rsub|n>=0>.)
    </itemize>

    <hrule>

    <\itemize>
      <item>Logical quantifiers, <math|\<forall\>> means \Pfor all/every/ for
      arbitrary<text-dots>\Q,\ 

      <math|<rprime|''>\<exists\><rprime|''>> means \Pexist/ for
      some/<text-dots>\Q. The order of them is very important!

      <item>Convergent sequence with limit <math|a>, i.e.
      <math|a<rsub|n>\<rightarrow\>a> (<math|lim<rsub|n\<rightarrow\>\<infty\>>
      a<rsub|n>=a>):

      <math|\<forall\>\<varepsilon\>\<gtr\>0,><math|\<exists\>N\<in\>\<bbb-N\>,><math|\<forall\>n\<geqslant\>N>,
      <math|<around*|\||a<rsub|n>-a|\|>\<less\>\<varepsilon\>>.

      <item>In case the limit <math|a> is not clear, there is a related
      definition:

      <item>Cauchy sequence: <math|\<forall\>\<varepsilon\>\<gtr\>0,><math|\<exists\>N\<in\>\<bbb-N\>,><math|\<forall\>n,m\<geqslant\>N>,
      <math|<around*|\||a<rsub|n>-a<rsub|m>|\|>\<less\>\<varepsilon\>>.

      <item>Example: Show that <math|s<rsub|n>=<big|sum><rsub|k=1><rsup|n><around*|(|<frac|1|<sqrt|k>>-<frac|1|<sqrt|k+1>>|)>>
      is a Cauchy sequence.

      <item>Proof: Fix an arbitrary <math|\<varepsilon\>\<gtr\>0>. Let
      <math|N=\<cdots\>=> Whenever <math|n\<gtr\>m\<geqslant\>N>,

      <\equation*>
        \ <around*|\||s<rsub|n>-s<rsub|m>|\|>\<leqslant\><around*|\||<big|sum><rsub|k=m+1><rsup|n><around*|(|<frac|1|<sqrt|k>>-<frac|1|<sqrt|k+1>>|)>|\|>=<frac|1|<sqrt|m+1>>-<frac|1|<sqrt|n+1>>\<less\><frac|1|<sqrt|m+1>>\<less\>1/<sqrt|N+1>\<less\>\<varepsilon\>
      </equation*>

      holds of we choose <math|N\<gtr\><frac|1|e<rsup|2>>> (no need to write
      \P<math|-1>\Q)

      <item>(Of course, the series converges to
      <math|1/<sqrt|1>-1/<sqrt|2>+<around*|(|1/<sqrt|2>-1/<sqrt|3>|)>+<around*|(|1/<sqrt|3>-1/<sqrt|4>|)>+\<cdots\>+.\<ldots\>=1>)
    </itemize>

    <hrule>

    <\itemize>
      <item>Example Question about continuous function, and differentiable
      function: let <math|f:<around*|(|-\<pi\>,\<pi\>|)>\<rightarrow\>\<bbb-R\>>
      be a \Pcontinuously differentiable function\Q, i.e. <math|f<rprime|'>>
      exists and is continuous (denoted <math|f\<in\>C<rsup|1><around*|(|<around*|(|-\<pi\>,\<pi\>|)>|)>>)
      with the property that <math|f<rprime|'><around*|(|3|)>=0.001>. Show
      that <math|f> is increasing on some open interval containing <math|3>.

      <item>Proof: Since <math|f<rprime|'><around*|(|x|)>> is \Pcontinuous\Q
      at the point <math|x=3>, there exists <math|\<delta\>\<gtr\>0> such
      that whenever <math|x\<in\><around*|(|3-\<delta\>,3+\<delta\>|)>>,
      <math|f<rprime|'><around*|(|x|)>\<geqslant\>0.0005>. (Next, use Mean
      Value Theorem): By mean value theorem, whenever <math|x\<less\>y> (in
      that open set),\ 

      <\equation*>
        <frac|f<around*|(|x|)>-f<around*|(|y|)>|x-y>=f<rprime|'><around*|(|c|)>\<gtr\>0
      </equation*>

      \ 

      for some <math|c> between <math|x,y>; therefore
      <math|f<around*|(|y|)>\<gtr\>f<around*|(|x|)>>; i.e. function is
      increasing there.
    </itemize>

    <hrule>

    <hrule>

    (Last period we mentioned: converging sequence; Cauchy sequence;
    continuous function<text-dots>)

    <strong|Review of Key properties/theorems about real numbers>

    <math|\<bbb-R\>> is \Pordered field\Q: <math|+,-,\<times\>,\<div\> >;
    <math|a\<less\>b,a=b,a\<gtr\>b>. (<math|\<leqslant\>><text-dots>)

    \PCompleteness property\Q:

    <\itemize>
      <\enumerate>
        <item>A sequence of real number is convergent if and only if it is
        Cauchy.

        (as we will see again, convergent sequences must be Cauchy; but the
        converse statement is not automatic; it is true for <math|\<bbb-R\>>,
        but false for <math|\<bbb-Q\>>)

        <item>Monotone convergent theorem: if <math|<around*|{|a<rsub|n>|}>>
        is \Pbounded above\Q and increasing, then <math|a<rsub|n>> converges
        (to some real number).

        (Bounded above: <math|\<exists\>M\<gtr\>0,\<forall\>n,a<rsub|n>\<leqslant\>M>;
        bounded below is similar;\ 

        bounded: <math|<around*|\||a<rsub|n>|\|>\<leqslant\>M>)

        <item>Least Upper Bound Property: Any subset
        <math|A\<subset\>\<bbb-R\>> that is bounded above, has a LEAST upper
        bound (supremum), denoted <math|sup<around*|(|A|)>>

        (unlike maximum of a set, which might not exist.)

        (of course, any <math|A\<subset\>\<bbb-R\>> that has a lower bound
        (bounded below) has a greatest lower bound (infimum)<text-dots>
        <math|inf<around*|(|A|)>>

        Example: <math|B=<around*|{|1/n:n\<in\>\<bbb-N\>|}>,sup<around*|(|*B|)>=1=max<around*|(|B|)>\<in\>B;inf<around*|(|B|)>=0.>
        <math|min<around*|(|B|)>> does not exist (you can always find a
        smaller number.)

        <math|A=<around*|(|2,3|)>,sup<around*|(|A|)>=3,inf<around*|(|A|)>=2.>
        <math|max<around*|(|A|)>,min<around*|(|A|)>> does not exist.

        <item>Bolzano-Weierstrass theorem: any bounded sequence
        <math|<around*|(|a<rsub|n>|)><rsub|n=1><rsup|\<infty\>>> has some
        convergent \Psubsequence\Q. <math|<around*|(|a<rsub|n<rsub|k>>|)><rsub|k=1><rsup|\<infty\>>>

        Example: <math|a<rsub|n>=<around*|(|-1|)><rsup|n>=<around*|(|-1,1,-1,1\<ldots\>|)>>
        is bounded but diverges. However,

        <math|a<rsub|2n>=<around*|(|1,1,1,1,1,1\<ldots\>.|)>> converges to 1.

        <item>Nested interval property (NIP): if
        <math|I<rsub|1>=<around*|[|a,b|]>\<supset\>I<rsub|2>\<supset\>I<rsub|3>\<supset\>I<rsub|4>\<ldots\>>
        is a nested sequence of closed and bounded intervals, then
        <math|<big|cap><rsub|n=1><rsup|\<infty\>>I<rsub|n>\<neq\>\<emptyset\>>
      </enumerate>
    </itemize>

    <hrule>

    <strong|Overview for this semester's Real Analysis.>

    <\enumerate>
      <item>Metric spaces (with a focus on <math|\<bbb-R\><rsup|n>>)

      <\itemize>
        <item>Distance function <math|d<around*|(|x,y|)>>; convergence;
        Cauchy sequence; (completeness)

        <item>Open set, closed set, limit point, interior, exterior,
        boundary<text-dots> closure<text-dots> (topology); compact sets;
        connected sets<text-dots>

        <item>Limit of functions; continuous functions<text-dots> (Uniformly
        continuous functions); interactions between continuous functions and
        compact/connected sets (generalizing Extreme Value Theorem;
        Intermediate Value Theorem<text-dots>)

        <item>(Maybe not talk about differentiation; or sequence of
        functions)
      </itemize>

      <item>Riemann-(Stieljes) integration (focus on <math|\<bbb-R\>>),
      <math|<big|int>f dg>

      <\itemize>
        <item>Riemann integrable functions

        <item>Continuous functions on <math|<around*|[|a,b|]>> are Riemann
        integrable<text-dots>

        <item>(fundamental theorem of calculus)

        <item>Theorem by Lebesgue about Riemann integrable functions are
        \Pcontinuous almost everywhere\Q, i.e. except for a \Pset of measure
        0\Q.
      </itemize>

      <item>Lebesgue integration (on <math|\<bbb-R\><rsup|n>>) (maybe not
      focus too much on measure theory detail)
    </enumerate>

    \;

    <hrule>

    Example of distances of <math|x\<in\>\<bbb-R\><rsup|2>>:

    <\itemize>
      <item>Euclidean distance: <math|<sqrt|x<rsup|2>+y<rsup|2>>>
    </itemize>

    \;

    \;
  </shown>>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|page-medium|paper>
  </collection>
</initial>