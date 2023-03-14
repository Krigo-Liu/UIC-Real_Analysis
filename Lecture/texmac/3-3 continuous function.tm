<TeXmacs|2.1.1>

<style|beamer>

<\body>
  <screens|<\shown>
    <strong|Continuous functions (between metric spaces)>.

    Recall: <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>> is continuous at
    <math|c> if: <math|\<forall\>\<varepsilon\>\<gtr\>0,\<exists\>\<delta\>\<gtr\>0,<around*|(|<around*|\||x-c|\|>\<less\>\<delta\>\<Longrightarrow\><around*|\||f<around*|(|x|)>-f<around*|(|c|)>|\|>\<less\>\<varepsilon\>|)>>.

    Let <math|<around*|(|X,d<rsub|X>|)>> and <math|<around*|(|Y,d<rsub|Y>|)>>
    be two metric spaces.

    [Keep in mind important case: <math|X=\<bbb-R\><rsup|2>,Y=\<bbb-R\><rsup|2>>]

    <strong|Definition:> <math|f:X\<rightarrow\>Y> is continuous at
    <math|x<rsub|0>\<in\>X> if: <math|\<forall\>\<varepsilon\>\<gtr\>0,\<exists\>\<delta\>\<gtr\>0,d<rsub|X><around*|(|x,x<rsub|0>|)>\<less\>\<delta\>\<Longrightarrow\>d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|x<rsub|0>|)>|)>\<less\>\<varepsilon\>>.

    Equivalently, using open balls: <math|\<forall\>\<varepsilon\>\<gtr\>0,\<exists\>\<delta\>\<gtr\>0,\<forall\>x\<in\>B<rsub|\<delta\>><around*|(|x<rsub|0>|)>,f<around*|(|x|)>\<in\>B<rsub|\<varepsilon\>><around*|(|f<around*|(|x<rsub|0>|)>|)>.>

    <strong|Definition:> <math|f:X\<rightarrow\>Y> is continuous on
    <math|A\<subset\>X> if it is continuous at every <math|x<rsub|0>\<in\>A>.

    <hrule>

    \PContinuity\Q is closedly related to \Popen set\Q and \Psequence
    limits\Q.

    <\framed>
      <strong|Theorem:> the following are equivalent (TFAE): if <math|X,Y>
      are metric spaces,

      <\enumerate>
        <item>[<math|\<varepsilon\>-\<delta\>>] <math|f:X\<rightarrow\>Y> is
        continuous at <math|x<rsub|0>>: <math|\<forall\>\<varepsilon\>\<gtr\>0,\<exists\>\<delta\>\<gtr\>0,d<rsub|X><around*|(|x,x<rsub|0>|)>\<less\>\<delta\>\<Longrightarrow\>d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|x<rsub|0>|)>|)>\<less\>\<varepsilon\>>.

        <item>[Sequential] If <math|x<rsub|k>\<rightarrow\>x<rsub|0>> in
        <math|<around*|(|X,d<rsub|X>|)>>, then
        <math|f<around*|(|x<rsub|k>|)>\<rightarrow\>f<around*|(|x<rsub|0>|)>>
        in <math|<around*|(|Y,d<rsub|Y>|)>>.

        <item>[Topological] For all open set <math|V\<subset\>Y> containing
        <math|f<around*|(|x<rsub|0>|)>>, there exist an open set
        <math|U\<subset\>X> containing <math|x<rsub|0>>, such that
        <math|f<around*|(|U|)>\<subset\>V>.
      </enumerate>
    </framed>

    Proof:\ 

    <\itemize>
      <item><math|3\<Longrightarrow\>1:>[Use openness to find
      <math|\<delta\>\<gtr\>0>] Let <math|\<varepsilon\>\<gtr\>0> be
      arbitrary (goal: find <math|\<delta\>\<gtr\>0>).

      <\itemize>
        <item>Let <math|V=B<rsub|\<varepsilon\>><around*|(|f<around*|(|x<rsub|0>|)>|)>>.

        <item>By 3, choose <math|U> open in <math|X> and contains
        <math|x<rsub|0>>, <math|f<around*|(|U|)>\<subset\>V>.

        <item>By \Popenness\Q, there exists a positive radius,
        <math|\<delta\>\<gtr\>0>, such that
        <math|B<rsub|\<delta\>><around*|(|x<rsub|0>|)>\<subset\>U>.

        <item>Then, for any <math|x\<in\>B<rsub|\<delta\>><around*|(|x<rsub|0>|)>\<subset\>U,f<around*|(|x|)>\<in\>f<around*|(|*U|)>\<subset\>V=B<rsub|\<varepsilon\>><around*|(|f<around*|(|x<rsub|0>|)>|)>>
        as required.
      </itemize>

      <item><math|1\<Longrightarrow\>2:>

      <em|Informal, backwards thought process:>

      <\itemize>
        <item>To show that <math|f<around*|(|x<rsub|k>|)>\<rightarrow\>f<around*|(|x<rsub|0>|)>>,
        we need: \Pfor all large enough <math|k>\Q,
        <math|d<around*|(|f<around*|(|x<rsub|k>|)>,f<around*|(|x<rsub|0>|)>|)>\<less\>\<varepsilon\>>.

        <item>Using <math|<around*|(|1|)>>, this can be achieved whenever
        <math|d<around*|(|x<rsub|k>,x<rsub|0>|)>\<less\>\<delta\>>.

        <item>Because <math|x<rsub|k>\<rightarrow\>x<rsub|0>> in <math|X>,
        this can be garanteed whenever: \Pk is large\Q.
      </itemize>

      <em|Proof: [forward]>

      <\itemize>
        <item>For any <math|\<varepsilon\>\<gtr\>0>, by (1), we can find
        <math|\<delta\>\<gtr\>0> satisfying
        <math|d<rsub|X><around*|(|x,x<rsub|0>|)>\<less\>\<delta\>\<Longrightarrow\>d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|x<rsub|0>|)>|)>\<less\>\<varepsilon\>>.

        <item>Because <math|x<rsub|k>\<rightarrow\>x<rsub|0>> in
        <math|<around*|(|X,d<rsub|X>|)>>, we choose <math|N> such that
        whenever <math|k\<geqslant\>N>, there is
        <math|d<rsub|X><around*|(|x,x<rsub|0>|)>\<less\>\<delta\>><math|>.

        <item>Therefore,\ 

        <\equation*>
          k\<geqslant\>N\<Longrightarrow\>d<rsub|X><around*|(|x,x<rsub|0>|)>\<less\>\<delta\>\<Longrightarrow\>d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|x<rsub|0>|)>|)>\<less\>\<varepsilon\>
        </equation*>

        as required.<math|\<box\>>

        <item>[Conclusion: assuming <math|<around*|(|1|)>>, then
        <math|x<rsub|k>\<rightarrow\>x<rsub|0>> implies
        <math|f<around*|(|x<rsub|k>|)>\<rightarrow\>f<around*|(|x<rsub|0>|)>>.]
      </itemize>

      <item><math|2\<Longrightarrow\>3:>(I can't directly prove 3; how about
      contradiction?)

      [Recall 3: For all open set <math|V\<subset\>Y> containing
      <math|f<around*|(|x<rsub|0>|)>>, there exist an open set
      <math|U\<subset\>X> containing <math|x<rsub|0>>, such that
      <math|f<around*|(|U|)>\<subset\>V>.]

      <\itemize>
        <item>Suppose the opposite of 3 is true: there exists an open set
        <math|V\<subset\>Y> containing <math|f<around*|(|x<rsub|0>|)>>, such
        that for all open <math|x<rsub|0>\<in\>U\<subset\>X>,
        <math|f<around*|(|U|)>\<nsubset\>V>.

        <item>[Idea 1: On <math|X>'s side, consider a sequence of open balls
        <math|U<rsub|k>=B<rsub|1/k><around*|(|x<rsub|0>|)>>.]

        For each <math|k>, choose <math|U=B<rsub|1/k><around*|(|x<rsub|0>|)>,>and
        choose <math|x<rsub|k>\<in\>B<rsub|1/k><around*|(|x<rsub|0>|)>> such
        that <math|f<around*|(|x<rsub|k>|)>\<nin\>V>.

        <item>Since <math|d<around*|(|x<rsub|k>,x|)>\<less\>1/k\<rightarrow\>0>,
        we know <math|x<rsub|k>\<rightarrow\>x<rsub|0>> in
        <math|<around*|(|X,d|)>>.

        <item>[Idea 2: On <math|Y>'s side, use openness to find a positive
        radius <math|\<varepsilon\><rsub|0>> for
        <math|f<around*|(|x<rsub|0>|)>>.]

        Because <math|V> is open and contains
        <math|f<around*|(|x<rsub|0>|)>>, there exists
        <math|\<varepsilon\>\<gtr\>0> such that
        <math|B<rsub|\<varepsilon\>><around*|(|f<around*|(|x<rsub|0>|)>|)>\<subset\>V>.

        <item>Since <math|f<around*|(|x<rsub|k>|)>\<nin\>V>, we know
        <math|f<around*|(|x<rsub|k>|)>\<nin\>B<rsub|\<varepsilon\>><around*|(|f<around*|(|x<rsub|0>|)>|)>>,
        in other words <math|d<around*|(|f<around*|(|x<rsub|k>|)>,f<around*|(|x<rsub|0>|)>|)>\<geqslant\>\<varepsilon\>>
        for all <math|k>.

        <item>But then <math|<around*|{|x<rsub|k>|}>> is a sequence
        converging to <math|x<rsub|0>> such that
        <math|f<around*|(|x<rsub|k>|)>> does not converge to
        <math|f<around*|(|x<rsub|0>|)>>, contradicting
        <math|<around*|(|2|)>.\<box\>>
      </itemize>
    </itemize>

    <hrule>

    <strong|Image and Preimage>\ 

    Set theory reminder: given any <math|f:X\<rightarrow\>Y>,
    <math|U\<subset\>X,V\<subset\>Y>, define

    <\equation*>
      f<around*|(|U|)>=<around*|{|f<around*|(|u|)>\<in\>Y:u\<in\>U|}>,
    </equation*>

    <\equation*>
      f<rsup|-1><around*|(|V|)>=<around*|{|u\<in\>X:f<around*|(|u|)>\<in\>V|}>.
    </equation*>

    Good properties of preimages with respect to union, intersection,
    complement:

    <\itemize>
      <item><math|f<around*|(|U|)>\<subset\>V\<Longleftrightarrow\>f<around*|(|u|)>\<in\>V<around*|(|\<forall\>u\<in\>U|)>\<Longleftrightarrow\>U\<subset\>f<rsup|-1><around*|(|V|)>>

      <item><math|f<rsup|-1><around*|(|V<rsub|1>\<cap\>V<rsub|2>|)>=<around*|{|x\<in\>X:f<around*|(|x|)>\<in\>V<rsub|i><around*|(|\<forall\>i|)>|}>=f<rsup|-1><around*|(|V<rsub|1>|)>\<cap\>f<rsup|-1><around*|(|V<rsub|2>|)>>

      <item><math|f<rsup|-1><around*|(|V<rsub|1>\<cup\>V<rsub|2>|)>=<around*|{|x\<in\>X:f<around*|(|x|)>\<in\>V<rsub|i><around*|(|\<exists\>i|)>|}>=f<rsup|-1><around*|(|V<rsub|1>|)>\<cup\>f<rsup|-1><around*|(|V<rsub|2>|)>>

      [In fact, true also for arbitrary unions and intersections]

      <item><math|f<rsup|-1><around*|(|V<rsup|c>|)>=<around*|{|x\<in\>X:f<around*|(|x|)>\<nin\>V|}>=<around*|(|f<rsup|-1><around*|(|V|)>|)><rsup|c>>
    </itemize>

    <hrule>

    <strong|Continuity vs preimage of open sets>

    <strong|Theorem:> <math|f:X\<rightarrow\>Y> is continuous if and only if
    for any <math|V> open in <math|Y>, <math|f<rsup|-1><around*|(|V|)>=<around*|{|x\<in\>X:f<around*|(|x|)>\<in\>V|}>>
    is open in <math|X>.

    Proof: [Use definition/property (3) of function continuity<text-dots>]

    [Remark: since <math|U> is open iff <math|U<rsup|c>> is closed, we also
    know that <math|f> is continuous if and only if its preimages of any
    closed sets are still closed.]

    <hrule>

    Compositions of continuous functions are continuous (using sequences, or
    using preimages of open sets)

    <strong|Theorem:> Let <math|X<long-arrow|\<rubber-rightarrow\>|f>Y<long-arrow|\<rubber-rightarrow\>|g>Z>
    where <math|f,g> are continuous (and <math|X,Y,Z> are metric spaces.)
    Then <math|g\<circ\>f:X\<rightarrow\>Z> is also continuous.

    Proof 2: Take an arbitrary convergence sequence in <math|X>,
    <math|x<rsub|k>\<rightarrow\>x>.

    Since <math|f> is continuous, <math|f<around*|(|x<rsub|k>|)>\<rightarrow\>f<around*|(|x|)>>
    (as a sequence in <math|Y>).

    Since <math|g> is continuous, <math|g<around*|(|f<around*|(|x<rsub|k>|)>|)>\<rightarrow\>g<around*|(|f<around*|(|x|)>|)>>
    (as a sequence in <math|Z>).

    Therefore, the function <math|g\<circ\>f> is also continuous.\ 

    Proof 3: let <math|W> be any open subset in <math|Z>. Because <math|g> is
    continuous, <math|g<rsup|-1><around*|(|W|)>> is open in <math|Y>; because
    <math|f> is continuous, <math|f<rsup|-1><around*|(|g<rsup|-1><around*|(|W|)>|)>=<around*|(|g\<circ\>f|)><rsup|-1><around*|(|W|)>>
    is open in <math|X.> Therefore <math|g\<circ\>f> is continuous.

    Proof 1: [Try using <math|\<varepsilon\>-\<delta\>> definition of
    continuous functions. The outline will be similar to the above, but more
    cumbersome to state<text-dots>]

    <hrule>

    Example of discontinuous function: <math|Arg:\<bbb-C\>-0\<rightarrow\><around*|(|-\<pi\>,\<pi\>|]>>
    [Using sequences: easy. Using preimage: also OK. Later: use \Pconnected
    set\Q.]

    <hrule>

    <strong|Review: some facts about continuous functions from
    <math|\<bbb-R\><rsup|m>> to <math|\<bbb-R\><rsup|n>>>

    [In this course, you do not need to justify why some basic functions are
    continuous<text-dots>]

    <em|Step <math|1>:> Continuous functions
    <math|f:\<bbb-R\><rsup|m>\<rightarrow\>\<bbb-R\>>. Suppose <math|f,g> are
    both real-valued functions on <math|\<bbb-R\><rsup|m>>, and
    <math|c\<in\>\<bbb-R\>>, then the following are also continuous
    functions:

    <\itemize>
      <item>Constant function <math|c>, and Linear functions
      <math|f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|m>|)>=a<rsub|1>x<rsub|1>+\<cdots\>+a<rsub|m>x<rsub|m>=\<b-a\><rsup|T>\<b-x\>>.

      <item><math|f\<pm\>g;c f;f g;f/g> (whenever
      <math|g<around*|(|x|)>\<neq\>0>); [Proof idea: sequential criterion +
      algebraic limit theorem.]

      <\itemize>
        <item>Therefore, polynomials in <math|m> variables and rational
        functions are continuous on their domain.
      </itemize>

      <item><math|f>, composed with continuous functions
      <math|h:\<bbb-R\>\<rightarrow\>\<bbb-R\>>

      <\itemize>
        <item>For example, <math|f<rsup|n>,<sqrt|f|n>,<around*|\||f|\|>,e<rsup|f>,ln
        <around*|(|f|)>> (whenever <math|f\<gtr\>0>) are continuous.

        <item><math|max<around*|(|f,g|)>=<frac|1|2><around*|(|<around*|\||f+g|\|>+<around*|\||f-g|\|>|)>,min<around*|(|f,g|)>=<frac|1|2><around*|(|<around*|\||f+g|\|>-<around*|\||f-g|\|>|)>>
        are continuous (also true for min/max of finitely many continuous
        functions).
      </itemize>
    </itemize>

    <em|Step 2:> Continuous functions <math|f:\<bbb-R\><rsup|m>\<rightarrow\>\<bbb-R\><rsup|n>>.

    <\itemize>
      <item><math|f=<around*|(|f<rsub|1>,f<rsub|2>,\<ldots\>,f<rsub|n>|)>>,
      where for each <math|i=1,2,\<ldots\>,n>, component
      <math|f<rsub|i>:\<bbb-R\><rsup|m>\<rightarrow\>\<bbb-R\>>.

      <item><math|f> is continuous if and only if each <math|f<rsub|i>> is
      continuous (reducing to step 1).

      <\itemize>
        <item>Reason: in <math|\<bbb-R\><rsup|n>> with any <math|p>-norm,
        sequence converges iff each coordinate converges; combine this with
        the sequential criterion for continuity.
      </itemize>
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