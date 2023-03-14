<TeXmacs|2.1.3>

<style|beamer>

<\body>
  <screens|<\shown>
    <strong|Convergence in a metric space>

    Idea: as <math|k\<rightarrow\>\<infty\>>, we say points
    <math|x<rsup|<around*|(|k|)>>\<rightarrow\>x> if \Pthey gets closer and
    closer (in terms of <math|d>)\Q: <math|d<around*|(|x<rsup|<around*|(|k|)>>,x|)>\<rightarrow\>0>.

    (<math|\<varepsilon\>-N>)<strong|Definition:> Let
    <math|<around*|(|M,d|)>> be a metric space, and consider a sequence in
    <math|M>, <math|<around*|{|x<rsup|<around*|(|k|)>>|}><rsup|\<infty\>><rsub|k=1>>.
    We say that <math|<around*|{|x<rsup|<around*|(|k|)>>|}>> converges to
    <math|x\<in\>M> (with respect to <math|d>), denoted by
    <math|<lprime|``>lim<rsub|k\<rightarrow\>\<infty\>>x<rsup|<around*|(|k|)>>=x<rprime|''>>
    or simply <math|<lprime|``>x<rsup|<around*|(|k|)>>\<rightarrow\>x<rprime|''>>,
    if:

    for all <math|\<varepsilon\>\<gtr\>0>, there exists natural number
    <math|N<around*|(|\<varepsilon\>|)>> such that, for all
    <math|n\<geqslant\>N>,

    <\equation*>
      d<around*|(|x<rsup|<around*|(|k|)>>,x|)>\<less\>\<varepsilon\>.
    </equation*>

    <\itemize>
      <item>Example 0: in <math|\<bbb-R\>>,
      <math|<around*|(|-1/k|)><rsub|k=1><rsup|\<infty\>>\<rightarrow\>0>.

      <item>Example 1: in <math|\<bbb-R\><rsup|2>> with the Euclidean metric,
      the sequence <math|<around*|{|<around*|(|1/k,1/k|)>|}>> converges to
      <math|<around*|(|0,0|)>> as follows:

      Let <math|\<varepsilon\>\<gtr\>0> be arbitrary. Let
      <math|N\<gtr\><sqrt|2>/\<varepsilon\>>. Then, whenever
      <math|k\<geqslant\>N,>

      <\equation*>
        \ d<around*|(|<around*|(|1/k,1/k|)>,<around*|(|0,0|)>|)>=<sqrt|1/k<rsup|2>+1/k<rsup|2>>=<sqrt|2>/k\<less\>\<varepsilon\>.
      </equation*>

      <item>Example <math|1<rprime|'>:>(same sequence, but with
      <math|l<rsup|1>> metric)

      We claim that <math|x<rsup|<around*|(|k|)>>\<rightarrow\><around*|(|0,0|)>>
      with respect to <math|l<rsup|1>> metric: Let
      <math|\<varepsilon\>\<gtr\>0> be arbitrary. Let
      <math|N\<gtr\>2/\<varepsilon\>>, then for all <math|k\<geqslant\>N>,
      (calculate <math|d<around*|(|x<rsup|<around*|(|k|)>>,x|)>>)

      <\equation*>
        <around*|\<\|\|\>|<around*|(|1/k,1/k|)>-<around*|(|0,0|)>|\<\|\|\>><rsub|1>=2/k\<less\>\<varepsilon\>.
      </equation*>

      <item>QUESTION: for <math|\<bbb-R\><rsup|n>>, if we use different
      <math|d<around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|p>>, will
      convergence/limit be different? (One example of this will be answered
      soon.)
    </itemize>

    <hrule>

    Very general facts about convergence in any metric space
    <math|<around*|(|M,d|)>>:

    <\itemize>
      <item>Limits are unique (if exist):\ 

      In <math|<around*|(|M,d|)>>, if <math|<around*|(|x<rsub|k>|)>\<rightarrow\>y>
      and <math|<around*|(|x<rsub|k>|)>\<rightarrow\>z>, then <math|y=z>.

      <em|Proof>: Let <math|\<varepsilon\>\<gtr\>0> be arbitrary. Since
      <math|<around*|(|x<rsub|k>|)>\<rightarrow\>y> and
      <math|<around*|(|x<rsub|k>|)>\<rightarrow\>z>, we can choose
      <math|N<rsub|1>> and <math|N<rsub|2>> such that whenever
      <math|n\<geqslant\>N<rsub|1>>, <math|d<around*|(|x<rsub|k>,y|)>\<less\>\<varepsilon\>>;
      whenever <math|n\<geqslant\>N<rsub|2>>,
      <math|d<around*|(|x<rsub|k>,z|)>\<less\>\<varepsilon\>>. Then, let
      <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>>. [By triangle inequality
      and symmetry,]

      <\equation*>
        \ d<around*|(|y,z|)>\<leqslant\>d<around*|(|x<rsub|k>,y|)>+d<around*|(|x<rsub|k>,z|)>\<less\>2\<varepsilon\>.
      </equation*>

      By \Pnonnegativity\Q, and because <math|\<varepsilon\>\<gtr\>0> is
      arbitrary, <math|d<around*|(|y,z|)>=0>.

      (Again by metric space property) Therefore <math|y=z>.

      <item>Definition of <strong|bounded sequence> in
      <math|<around*|(|M,d|)>>: there exists a positive <math|K\<gtr\>0> and
      a point <math|p> (*usually <math|p=<math-bf|0>> for vector space*) such
      that for all terms of the sequence,
      <math|d<around*|(|x<rsub|k>,p|)>\<leqslant\>K>.

      <item>Statement: If <math|<around*|{|x<rsup|<around*|(|k|)>>|}>> is a
      sequence of points in <math|M> with respect to the metric <math|d>,
      then <math|<around*|{|x<rsup|<around*|(|k|)>>|}>> is bounded in
      <math|<around*|(|M,d|)>>.\ 

      <\itemize>
        <item>(Idea: choose <math|\<varepsilon\>=1>; \Pall later terms\Q have
        small distance; for finitely many earlier terms, take max distance.)
      </itemize>

      <em|Proof:> Let <math|p\<in\>M> be a point [in <math|\<bbb-R\>>, this
      is just <math|0>]. Let <math|x<rsup|<around*|(|k|)>>\<rightarrow\>x>,
      and call <math|L=d<around*|(|x,p|)>> [in <math|\<bbb-R\>>, this is just
      <math|<around*|\||x|\|>>]. Choose <math|\<varepsilon\><rsub|0>=1>, then
      for some natural number <math|N> and all <math|k\<geqslant\>N>,
      <math|d<around*|(|x<rsup|<around*|(|k|)>>,x|)>\<less\>1=\<varepsilon\><rsub|0>>
      [subscript of <math|\<varepsilon\>> is to emphesize that I've made a
      choice for concreteness]. By triangle inequality,

      <\equation*>
        d<around*|(|x<rsup|<around*|(|k|)>>,p|)>\<leqslant\>d<around*|(|x<rsup|<around*|(|k|)>>,x|)>+d<around*|(|x,p|)>\<less\>1+L.
      </equation*>

      [But don't forget <math|x<rsup|<around*|(|1|)>>,x<rsup|<around*|(|2|)>>,\<ldots\>,x<rsup|<around*|(|N-1|)>>>]
      Therefore if we choose

      <\equation*>
        K=max<around*|(|d<around*|(|x<rsup|<around*|(|1|)>>,p|)>,\<ldots\>,d<around*|(|x<rsup|<around*|(|N-1|)>>,p|)>,1+L|)>
      </equation*>

      then the distance from any <math|x<rsup|<around*|(|k|)>>> to the point
      <math|p> will be bounded above by <math|K> as required.
    </itemize>

    <hrule>

    Back to <math|\<bbb-R\><rsup|n>> together with
    <math|l<rsup|1>,l<rsup|2>,l<rsup|\<infty\>>> metric.

    <em|Theorem>: a sequence of points <math|x<rsup|<around*|(|k|)>>> in
    <math|\<bbb-R\><rsup|n>> converges to <math|x> in <math|l<rsup|2>>
    distance if and only if

    <\equation*>
      lim<rsub|k\<rightarrow\>\<infty\>>x<rsub|i><rsup|<around*|(|k|)>>=x<rsub|i>
      <around*|(|\<forall\>i=1,2,\<ldots\>n|)>.
    </equation*>

    <\itemize>
      <item><em|Lemma>: In <math|\<bbb-R\><rsup|n>>, for all <math|i>,\ 

      <\equation*>
        <big|sum><rsub|i=1><rsup|n><around*|\||v<rsub|i>|\|>=<around*|\<\|\|\>|v|\<\|\|\>><rsub|1>\<geqslant\><around*|\<\|\|\>|v|\<\|\|\>><rsub|2>\<geqslant\><around*|\<\|\|\>|v|\<\|\|\>><rsub|\<infty\>>=max<rsub|i><around*|\||v<rsub|i>|\|>\<geqslant\><around*|\||v<rsub|i>|\|>.
      </equation*>
    </itemize>

    Proof of theorem: First, suppose <math|x<rsup|<around*|(|k|)>>\<rightarrow\>x>
    in 2-norm. Then <math|\<forall\>\<varepsilon\>\<gtr\>0,\<exists\>N,\<forall\>k\<geqslant\>N>,

    <\equation*>
      \ <around*|\||x<rsub|i><rsup|<around*|(|k|)>>-x<rsub|i>|\|>\<leqslant\><rsup|lemma><around*|\<\|\|\>|x<rsup|<around*|(|k|)>>-x|\<\|\|\>><rsub|2>\<less\><rsup|conv>\<varepsilon\>\<Longrightarrow\>lim<rsub|k\<rightarrow\>\<infty\>>x<rsub|i><rsup|<around*|(|k|)>>=x<rsub|i>
    </equation*>

    i.e. each coordinate converges.

    Next, suppose for all <math|i> and for all <math|\<varepsilon\>\<gtr\>0>,
    <math|lim<rsub|k\<rightarrow\>\<infty\>>
    x<rsub|i><rsup|<around*|(|k|)>>=x<rsub|i>>. Then for each <math|i>, there
    exists <math|N<rsub|i>> such that whenever <math|k\<geqslant\>N<rsub|i>>,
    <math|<around*|\||x<rsub|i><rsup|<around*|(|k|)>>-x<rsub|i>|\|>\<less\>\<varepsilon\>/n>.
    Then, taking <math|N=<below|max|1\<leqslant\>i\<leqslant\>n><around*|(|N<rsub|i>|)>>,
    whenever <math|k\<geqslant\>N>,

    <\equation*>
      <around*|\<\|\|\>|x<rsup|<around*|(|k|)>>-x|\<\|\|\>><rsub|2>\<leqslant\><around*|\<\|\|\>|x<rsup|<around*|(|k|)>>-x|\<\|\|\>><rsub|1>=<big|sum><rsub|i=1><rsup|n><around*|\||x<rsub|i><rsup|<around*|(|k|)>>-x<rsub|i>|\|>\<less\>n\<varepsilon\>/n=\<varepsilon\>.
    </equation*>

    Therefore we conclude that <math|<below|lim|k\<rightarrow\>\<infty\>>x<rsup|<around*|(|k|)>>=x>
    in <math|l<rsup|2>>-norm.

    <hrule>

    (Quick comment: actually, for finite dimensional
    <math|\<bbb-R\><rsup|n>>, ALL <math|p>-norms \Phave the same
    convergence\Q, i.e. \Pcoordinate-wise convergence\Q. Not true for
    infinite dimension, leading to interesting examples.)

    <hrule>

    <strong|Topology of Metric Space>

    (Up to this point, from specific to general, we have seen:
    <math|\<bbb-R\>\<rightsquigarrow\>\<bbb-R\><rsup|n>\<rightsquigarrow\>>normed
    vector space <math|\<rightsquigarrow\>> metric space, where we understand
    convergence and limit.)

    (We will define: open set, closed set; interior, exterior, boundary,
    closure)

    <\itemize>
      <item>Let <math|<around*|(|M,d|)>> be a metric space for all of the
      following discussion.

      <item>Open ball of radius <math|r>:
      <math|B<rsub|r><around*|(|x|)>=<around*|{|y\<in\>M:d<around*|(|y,x|)>\<less\>r|}>>.

      <item>(Closed ball: <math|<overline|
      B<rsub|r>><around*|(|x|)>=<around*|{|y\<in\>M:d<around*|(|y,x|)>\<leqslant\>r|}>>)

      <item>(Sphere: <math|\<partial\>B<rsub|r><around*|(|x|)>=<around*|{|y\<in\>M:d<around*|(|y,x|)>=r|}>>)

      <item>Next, consider a subset <math|X\<subset\>M>.

      <item>Interior: <math|X<rsup|\<circ\>>=<around*|{|x\<in\>M:\<exists\>r\<gtr\>0,B<rsub|r><around*|(|x|)>\<subset\>X|}>>
      (some small open ball around <math|x> is contained in <math|X>).

      <item>Exterior: <math|Ext<around*|(|X|)>=<around*|(|X<rsup|c>|)><rsup|\<circ\>>=<around*|{|y\<in\>M:\<exists\>r\<gtr\>0,B<rsub|r><around*|(|y|)>\<cap\>
      X=\<emptyset\>|}>> (for some small open neighborhood, an open ball does
      not interset <math|X>.)

      <item>Boundary: Any open ball centered at <math|z> intersets both
      <math|X> and <math|X<rsup|c>>:

      <math|\<partial\>X=<around*|{|z\<in\>M:\<forall\>r\<gtr\>0,B<rsub|r><around*|(|z|)>\<cap\>
      X\<neq\>\<emptyset\>,B<rsub|r><around*|(|z|)>\<cap\>
      X<rsup|c>\<neq\>\<emptyset\>|}>>.

      <item>Closure of <math|X> (definition 1):
      <math|<overline|X>=X\<cup\>\<partial\>X>.

      <item>Open set (definition 1): <math|X> is open if
      <math|X=X<rsup|\<circ\>>.>

      <item>Closed set (definition 1): <math|X> is closed if <math|X<rsup|c>>
      is open.

      <item>Closed set definition 2: <math|X> is closed if
      <math|><math|<overline|X>=X>.
    </itemize>

    Next time: closed set vs \Plimit of some sequence\Q; union,
    intersetctions of open/closed sets;

    Continuous functions on metric space: <math|\<varepsilon\>-\<delta\>>
    definition, and topological definitions (in terms of inverse image of
    open sets).
  </shown>>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|page-medium|paper>
  </collection>
</initial>