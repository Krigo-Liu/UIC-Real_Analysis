<TeXmacs|2.1.1>

<style|beamer>

<\body>
  <screens|<\shown>
    <strong|Continuous functions on Compact set>

    <\itemize>
      <item>Opening example: Extreme Value Theorem.

      Let <math|f:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>> be continuous.
      Then, there exists <math|m,M\<in\>\<bbb-R\>> such that for all
      <math|x\<in\><around*|[|a,b|]>,m\<leqslant\>f<around*|(|x|)>\<leqslant\>M>.
      Furthermore, there exists <math|x<rsub|min>,x<rsub|max>\<in\><around*|[|a,b|]>>
      such that <math|f<around*|(|x<rsub|min>|)>=m,f<around*|(|x<rsub|max>|)>=M>.

      \PContinuous functions on a closed and bounded interval attains its
      minimum and maximum values.\Q

      <\itemize>
        <item>Low-tech, hands-on proof:

        <item>Step 1: show that a continuous function on
        <math|<around*|[|a,b|]>> takes bounded value

        <\itemize>
          <item>Idea: suppose function values are unbounded, then by
          bisecting the interval we can find an arbitrarily small interval
          with function value unbounded; however, continuous functions
          locally has bounded values, contradiction.
        </itemize>

        <item>Step 2: inf/sup function values can be attained.

        <\itemize>
          <item>Idea: Suppose <math|f<around*|(|x|)>\<gtr\>m> for all
          <math|x>, then consider the new continuous function
          <math|g<around*|(|x|)>=1/<around*|(|f<around*|(|x|)>-m|)>>, if its
          value is unbounded, then <math|g<around*|(|x|)>> violates Step 1
          result; but if its value is bounded above, then <math|m> cannot be
          inf of function values. Contradiction.
        </itemize>
      </itemize>

      <item>Today we give a \Phigh-level\Q proof that works even in high
      dimensions.

      <item>Let <math|K> be a compact subset in a metric space <math|X>. Let
      <math|*Y> be another metric space. [Usually <math|Y=\<bbb-R\>>.]

      <\itemize>
        <item>Recall two equivalent definitions of compactness:

        <item>1. Any open cover has a finite subcover.

        <item>2. Any sequence has a convergent subsequence (limit in
        <math|K>).
      </itemize>

      <item>Consider a continuous function <math|f:X\<rightarrow\>Y>.

      <item>Theorem 1: If <math|K\<subset\>X> is compact and if
      <math|f:X\<rightarrow\>Y> is continuous, then the image
      <math|f<around*|(|K|)>\<subset\>Y> is compact.

      <item>Proof 1 (using open cover compactness):

      <\itemize>
        <item>Start from a open cover of <math|f<around*|(|K|)>> in <math|Y>:
        <math|\<cup\><rsub|\<alpha\>\<in\>I>V<rsub|\<alpha\>>\<supset\>f<around*|(|K|)>>.
        We wish to show that there must be a finite subcover.

        <item>[Get open sets in <math|X>, using preimage.] Because each
        <math|V<rsub|\<alpha\>>> is open in <math|Y>, AND <math|f> is
        continuous, the preimages <math|f<rsup|-1><around*|(|V<rsub|\<alpha\>>|)>>
        must also be open in <math|X>.

        <item>[They cover <math|K>] <math|\<cup\><rsub|\<alpha\>\<in\>I>V<rsub|\<alpha\>>\<supset\>f<around*|(|K|)>>,
        therefore <math|><math|\<cup\><rsub|\<alpha\>\<in\>I>f<rsup|-1><around*|(|V<rsub|\<alpha\>>|)>\<supset\>K>.

        <item>BY COMPACTNESS OF <math|K>, there's a finite subcover
        <math|\<cup\><rsub|<rsub|i=1><rsup|n>>f<rsup|-1><around*|(|V<rsub|i>|)>\<supset\>K>.

        <item>Then, <math|\<cup\><rsub|<rsub|i=1><rsup|n>>V<rsub|i>\<supset\>f<around*|(|K|)>>
        is a finite subcover<text-dots>

        <item>Therefore, <math|f<around*|(|K|)>> is compact.<math|\<box\>>
      </itemize>

      <item>[Proof summary: open cover of <math|f<around*|(|K|)>>
      <math|<long-arrow|\<rubber-rightarrow\>|continuity>> open cover of
      <math|K<long-arrow|\<rubber-rightarrow\>|compactness>>finite subcover
      of <math|K\<longrightarrow\>>finite subcover of
      <math|f<around*|(|K|)>>.]

      <item>Proof 2 (using sequential compactness):

      <\itemize>
        <item>Let <math|<around*|{|y<rsub|k>|}><rsub|k=1><rsup|\<infty\>>> be
        any sequence in <math|f<around*|(|K|)>>; Our goal is to show that
        some subsequence converges to <math|y\<in\>f<around*|(|K|)>>.

        <item>[To use compactness of <math|K>, we need to construct a
        sequence in <math|X>:] since <math|y<rsub|k>\<in\>f<around*|(|K|)>>,
        <math|y<rsub|k>=f<around*|(|x<rsub|k>|)>> for some
        <math|x<rsub|k>\<in\>K>.

        <item>[Use sequential compactness in <math|K>] Because <math|K> is
        compact, we can choose some subsequence
        <math|<around*|{|x<rsub|k<rsub|n>>|}><rsub|n=1><rsup|\<infty\>>>
        converging to <math|x<rsub|0>\<in\>K>:
        <math|lim<rsub|n\<rightarrow\>\<infty\>>><math|x<rsub|k<rsub|n>>=x<rsub|0>.>

        <item>Since <math|f> is continuous,
        <math|lim<rsub|n\<rightarrow\>\<infty\>>><math|f<around*|(|x<rsub|k<rsub|n>>|)>=f<around*|(|x<rsub|0>|)>\<in\>f<around*|(|K|)>>.

        <item>Therefore we have a subsequence with limit in
        <math|f<around*|(|K|)>>, therefore <math|f<around*|(|K|)>> is
        (sequentially) compact.<math|\<box\>>
      </itemize>

      <item>[Proof summary: sequence in <math|f<around*|(|K|)>\<longrightarrow\>>sequence
      in <math|K<long-arrow|\<rubber-rightarrow\>|compactness>>convergent
      subsequence in <math|K<long-arrow|\<rubber-rightarrow\>|continuity>>convergent
      subsequence in <math|f<around*|(|K|)>>.]

      <item>Example:\ 

      <\itemize>
        <item>Let <math|K\<subset\>\<bbb-R\><rsup|n>> be compact. What can
        you say about <math|K>? <math|K> is closed and bounded.

        <item>Let <math|Y=\<bbb-R\>>, and consider a continuous
        <math|f:K\<rightarrow\>\<bbb-R\>>. What do you know about
        <math|f<around*|(|K|)>>? It is also compact in <math|\<bbb-R\>>. The
        image set is closed and bounded.

        <item>Let <math|m=inf<around*|(|f<around*|(|K|)>|)>,M=sup<around*|(|f<around*|(|K|)>|)>>.
        Why are <math|m,M\<in\>f<around*|(|K|)>>? Because closed set contains
        its maximum and minimum<text-dots>

        <\itemize>
          <item><math|m\<in\>f<around*|(|K|)>> means there's an
          <math|x<rsub|min>> such that <math|m=f<around*|(|x<rsub|min>|)>>.
          Similar for <math|M=f<around*|(|x<rsub|max>|)>><text-dots>
        </itemize>

        <item>Conclusion: [<math-bf|Extreme Value Theorem in
        <math|\<bbb-R\><rsup|n>>>]. Any real-valued continuous function
        defined on a domain that is closed and bounded in
        <math|\<bbb-R\><rsup|n>> must have bounded value; furthermore, the
        minimum and maximum value can be attained.
      </itemize>
    </itemize>

    <hrule>

    Next time: another key property of continuous functions on compact space:
    uniform continuity.

    Recall: <math|f:X\<rightarrow\>Y> is continuous if

    <math|\<forall\>x<rsub|0>\<in\>X,\<forall\>\<varepsilon\>\<gtr\>0,\<exists\>\<delta\><rsub|x<rsub|0>,\<varepsilon\>>\<gtr\>0,d<rsub|X><around*|(|x,x<rsub|0>|)>\<less\>\<delta\>\<Longrightarrow\>d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|x<rsub|0>|)>|)>\<less\>\<varepsilon\>>.

    Above, <math|\<delta\>> depends on (variables defined before it)
    <math|x<rsub|0>> and <math|\<varepsilon\>>.

    If such <math|\<delta\>\<gtr\>0> DOES NOT depend on <math|x<rsub|0>>,
    then we have uniform continuity:

    <math|\<forall\>\<varepsilon\>\<gtr\>0,\<exists\>\<delta\><rsub|\<varepsilon\>>\<gtr\>0,\<forall\>x<rsub|0>\<in\>X,d<rsub|X><around*|(|x<rsub|1>,x<rsub|2>|)>\<less\>\<delta\>\<Longrightarrow\>d<rsub|Y><around*|(|f<around*|(|x<rsub|1>|)>,f<around*|(|x<rsub|2>|)>|)>\<less\>\<varepsilon\>>

    when two <math|x> close to each other, tow<math|f<around*|(|x|)>> is also
    close to each other.

    Theorem 2: let <math|f:K\<rightarrow\>Y> be a continuous function, where
    <math|K> is compact. Then <math|f> is uniformly continuous.

    <\itemize>
      <item>Proof 1 (using open-cover compactness)

      <\itemize>
        <item><math|\<forall\>\<varepsilon\>\<gtr\>0,\<exists\>\<delta\><rsub|\<varepsilon\>>\<gtr\>0,d<rsub|X><around*|(|x<rsub|1>,x<rsub|2>|)>\<less\>\<delta\>\<Longrightarrow\>d<rsub|Y><around*|(|f<around*|(|x<rsub|1>|)>,f<around*|(|x<rsub|2>|)>|)>\<less\>\<varepsilon\>>

        <item>
      </itemize>

      <item>Proof 2 (using sequential compactness and contradiction: what
      does \Pnot uniformly continuous\Q mean in logical statement?)

      <\itemize>
        <item>Proof: suppose that <math|f> is NOT uniformly continuous on
        <math|K>

        <item>[Uniformly Continuous: <math|\<forall\>\<varepsilon\>\<gtr\>0,\<exists\>\<delta\><rsub|\<varepsilon\>>\<gtr\>0,d<rsub|X><around*|(|x<rsub|1>,x<rsub|2>|)>\<less\>\<delta\>\<Longrightarrow\>d<rsub|Y><around*|(|f<around*|(|x<rsub|1>|)>,f<around*|(|x<rsub|2>|)>|)>\<less\>\<varepsilon\>>]

        <item><math|\<exists\>\<epsilon\><rsub|0>\<gtr\>0,\<forall\>1/n\<gtr\>0,\<exists\>x<rsub|n><rsub|>,y<rsub|n>:d<rsub|><rsub|><around*|(|x<rsub|n><rsub|>,y<rsub|n>|)>\<less\>1/n\<Longrightarrow\>d<rsub|><around*|(|f<around*|(|x<rsub|n><rsub|>|)>,f<around*|(|y<rsub|n>|)>|)>\<geqslant\>\<epsilon\><rsub|0>.>

        <item>(We have constructed two sequences <math|x<rsub|n>,y<rsub|n>>)

        <item>Since <math|K> is compact, choose a convergent subsequence of
        <math|x>, (also denoted <math|x<rsub|n>>), such that
        <math|x<rsub|n>\<rightarrow\>x<rsub|0>>.

        <item>Since <math|d<rsub|><rsub|><around*|(|x<rsub|n<rsub|k>><rsub|>,y<rsub|n<rsub|k>>|)>\<less\>1/n<rsub|k>>,
        we also know that <math|y<rsub|n<rsub|k>>\<rightarrow\>x<rsub|0>>

        [Proof<text-dots> Fix any <math|\<epsilon\>\<gtr\>0>. Since
        <math|x<rsub|n>\<rightarrow\>x<rsub|0>>, choose <math|N<rsub|2>> such
        that whenever <math|n\<geqslant\>N<rsub|2>,d<around*|(|x<rsub|n>,x<rsub|0>|)>\<less\>\<epsilon\>/2>.
        Then, let <math|N\<gtr\>max<around*|(|N<rsub|2>,2/\<epsilon\>|)>>,
        then whenever <math|n\<geqslant\>N>,

        <\equation*>
          d<around*|(|y<rsub|n>,x<rsub|0>|)>\<leqslant\>d<around*|(|y<rsub|n>,x<rsub|n>|)>+d<around*|(|x<rsub|n>,x<rsub|0>|)>\<less\>\<epsilon\>/2+\<epsilon\>/2=\<epsilon\>
        </equation*>

        Therefore the subsequence <math|y<rsub|n>> also converges to
        <math|x<rsub|0>>]

        <item>However, because <math|f> is continuous, on this subsequence,
        <math|x<rsub|n>\<rightarrow\>x<rsub|0>\<Longrightarrow\>f<around*|(|x<rsub|n>|)>\<rightarrow\>f<around*|(|x<rsub|0>|)>;>similarly,<math|y<rsub|n>\<rightarrow\>x<rsub|0>\<Longrightarrow\>f<around*|(|y<rsub|n>|)>\<rightarrow\>f<around*|(|x<rsub|0>|)>>.
        This contradicts

        <math|d<rsub|><around*|(|f<around*|(|x<rsub|n><rsub|>|)>,f<around*|(|y<rsub|n>|)>|)>\<geqslant\>\<epsilon\><rsub|0>>.
      </itemize>
    </itemize>

    <hrule>

    Big ovverview of things that once can talk about:

    Up to this point: metric spaces (generalizes
    <math|\<bbb-R\>,\<bbb-R\><rsup|n>>); convergence; open set (ball), closed
    set (sequence limit); continuous functions;
    (<math|\<epsilon\>-\<delta\>>; sequence; preimage open sets / closed
    sets); compactness (generalizing closed and bounded subsets of
    <math|\<bbb-R\><rsup|n>> and <math|<around*|[|a,b|]>\<subset\>\<bbb-R\>>);
    compactness + continuity = compact image+uniform continuity.

    Next: Completeness metric space (Where any Cauchy sequence is
    convergent.) Example: <math|\<bbb-Q\>> is not complete; <math|\<bbb-R\>>
    is complete.\ 

    Uniform continuous functions and related concepts: Lipshitz continuous
    functions;(Holder continuous, <math|a\<in\><around*|(|0,1|]>;if
    \<alpha\>=1>, Lipshitz function)

    Continuous <math|\<supset\>> uniformly continuous <math|\<supset\>>
    Holder continuous <math|\<supset\>> Lipshitz continuous <math|\<supset\>>
    contraction mapping <math|L\<less\>1>

    Uniform continuous: <math|\<forall\>\<epsilon\>\<gtr\>0,\<exists\>\<delta\>\<gtr\>0,d<around*|(|x,y|)>\<less\>\<delta\>\<Longrightarrow\>d<around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<less\>\<epsilon\>.>

    <math|\<alpha\>>-Holder continuous: <math|d<around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<leqslant\>M\<cdot\><around*|[|d<around*|(|x,y|)>|]><rsup|\<alpha\>>>
    for som <math|L\<gtr\>0>

    Lipshitz continuous: <math|d<around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<leqslant\>L\<cdot\>d<around*|(|x,y|)>>
    for some <math|L\<gtr\>0>. Smallest such <math|L> is called the Lipshitz
    constant.

    Contraction mapping: <math|d<around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<less\>r
    d<around*|(|x,y|)>>, for some <math|0\<less\>r\<less\>1>.

    Banach Fixed Point Theorem: If <math|f:X\<rightarrow\>X> is a contraction
    mapping, and if <math|X> are CMPLETE metric spaces; then <math|f> has a
    unique fixed point <math|x<rsub|0>>(such that
    <math|f<around*|(|x<rsub|0>|)>=x<rsub|0>>)
  </shown>>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|page-medium|paper>
  </collection>
</initial>