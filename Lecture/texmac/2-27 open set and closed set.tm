<TeXmacs|2.1.1>

<style|beamer>

<\body>
  <screens|<\shown>
    <strong|Open sets and Closed sets>

    <em|Reference: Johnsonbaugh & Pfaffenberger section 38,39; Tao II section
    1.2>

    Let <math|<around*|(|M,d|)>> be a metric space.

    <strong|Open set>

    <\itemize>
      <item>Definition: (Open) ball of radius <math|r> centered at
      <math|x<rsub|0>\<in\>M> is

      <math|B<rsub|r><around*|(|x<rsub|0>|)>=<around*|{|y\<in\>M:d<around*|(|y,x<rsub|0>|)>\<less\>r|}>>.

      <item>Definition: a subset <math|U\<subset\>M> is open if for any
      <math|x> in <math|U>, there exists some <math|r\<gtr\>0> such that
      <math|B<rsub|r><around*|(|x|)>\<subset\>U>.

      <\itemize>
        <item>Example: in <math|\<bbb-R\>>, <math|<around*|(|a,b|)>> is open;
        <math|\<bbb-R\>> is open; <math|<around*|[|a,b|)>> is not open.

        <item>Example: in <math|\<bbb-R\><rsup|3>>,
        <math|<around*|{|x<rsup|2>+y<rsup|2>+z<rsup|2>\<less\>3|}>> is open.
        (More generally, open balls in metric spaces are open.)

        <item>Example: empty sets are open (\Pvacuously true: no <math|x>,
        nothing to check.\Q)
      </itemize>

      <item>(Arbitrary) union and (finite) intersection of open sets:

      <\itemize>
        <item>\PArbitrary union of open sets is still open.\Q\ 

        Let <math|<around*|{|U<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>> be
        a family of open sets. (Each <math|U<rsub|\<alpha\>>> is open; the
        index set <math|I> can even be uncountably infinite.) Then their
        union <math|\<cup\><rsub|\<alpha\>\<in\>I>U<rsub|\<alpha\>>> is open.

        Proof: For any <math|x\<in\>\<cup\><rsub|\<alpha\>\<in\>I>U<rsub|\<alpha\>>>,
        <math|x\<in\>U<rsub|\<alpha\>>> for some <math|\<alpha\>>. Then,
        because <math|U<rsub|\<alpha\>>> is open, there exists some
        <math|r\<gtr\>0> such that <math|B<rsub|r><around*|(|x|)>\<subset\>U<rsub|\<alpha\>>\<subset\>\<cup\><rsub|\<alpha\>\<in\>I>U<rsub|\<alpha\>>>.
        [Therefore the union is an open set.]

        <item>If <math|U<rsub|1>,U<rsub|2>> are both open sets, then
        <math|U<rsub|1>\<cap\>U<rsub|2>> is also open:

        Proof: Let <math|x\<in\>U<rsub|1>\<cap\>U<rsub|2>>. Then, choose
        <math|r<rsub|1>,r<rsub|2>\<gtr\>0> such that
        <math|B<rsub|r<rsub|1>><around*|(|x|)>\<subset\>U<rsub|1>>, and
        <math|B<rsub|r<rsub|2>><around*|(|x|)>\<subset\>U<rsub|2>>. Now, let
        <math|r=min<around*|(|r<rsub|1>,r<rsub|2>|)>>. Then
        <math|B<rsub|r><around*|(|x|)>> is contained in both <math|U<rsub|1>>
        and <math|U<rsub|2>>, i.e. <math|B<rsub|r><around*|(|x|)>\<subset\>><math|U<rsub|1>\<cap\>U<rsub|2>>.
        [Therefore <math|U<rsub|1>\<cap\>U<rsub|2>> is open.]

        <item>If <math|U<rsub|1>,U<rsub|2>,\<ldots\>,U<rsub|n>> are finitely
        many open sets, then their intersection
        <math|\<cap\><rsub|i=1><rsup|n>U<rsub|i>> is open.

        <\itemize>
          <item>Proof 1: Use the result above, and use induction on <math|n>.
          [This is a common trick of going from 2 things to finitely many
          things.]

          <item>Proof 2: Similar to the proof above, choose radius
          <math|r<rsub|1>,r<rsub|2>,\<ldots\>,r<rsub|n>> such that
          <math|B<rsub|r<rsub|i>><around*|(|x|)>\<subset\>U<rsub|i>>; then
          take <math|r=min<around*|(|r<rsub|1>,r<rsub|2>,\<ldots\>,r<rsub|n>|)>\<gtr\>0>.
        </itemize>

        <item>WARNING: it is not true that infinitely many open set's
        intersection is still open! Example: in <math|\<bbb-R\>>,
        <math|U<rsub|n>=<around*|(|-1/n,1/n|)>> is open, but
        <math|\<cap\><rsub|n=1><rsup|\<infty\>>U<rsub|n>=<around*|{|0|}>> is
        not open.

        <em|Question: what goes wrong in \PProof 2\Q?>
      </itemize>
    </itemize>

    <strong|Closed set>

    <\itemize>
      <item>Definition: a set <math|C\<subset\>M> is closed if
      <math|<around*|(|x<rsub|k>\<in\>C,lim<rsub|k\<rightarrow\>\<infty\>>x<rsub|k>=x\<in\>M|)>>
      implies <math|x\<in\>C>.

      <item>[Equivalently, a closed set contains all of its \Plimits\Q: if
      <math|x> is the limit of some sequence <math|x<rsub|k>> in <math|C>,
      then <math|x> is also in <math|C>.]

      <\itemize>
        <item>Example in <math|\<bbb-R\>>: <math|<around*|[|2,3|]>> is
        closed: if <math|<around*|[|2,3|]>\<ni\><around*|(|a<rsub|n>|)>\<rightarrow\>a>,
        then <math|2\<leqslant\>a<rsub|n>\<leqslant\>3\<Longrightarrow\>2\<leqslant\>lim
        a<rsub|n>=a\<leqslant\>3\<Longrightarrow\>a\<in\><around*|[|2,3|]>>.

        <math|<around*|[|2,3|)>> is NOT closed, because
        <math|a<rsub|n>=3-1/n\<rightarrow\>3\<notin\><around*|[|2,3|)>>.
      </itemize>

      <item>(Arbitrary) intersection and (finite) union of closed sets

      <\itemize>
        <item>\PArbitrary intersection of closed sets is still closed.\Q \ \ 

        Let <math|<around*|{|C<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>> be
        a family of closed sets. (Each <math|C<rsub|\<alpha\>>> is closed;
        the index set <math|I> can even be uncountably infinite.) Then the
        intersection <math|\<cap\><rsub|\<alpha\>\<in\>I>C<rsub|\<alpha\>>>
        is closed.

        Proof: Let <math|x<rsub|k>> be a sequence in
        <math|\<cap\><rsub|\<alpha\>\<in\>I>C<rsub|\<alpha\>>> with
        <math|lim<rsub|k\<rightarrow\>\<infty\>>x<rsub|k>=x>. For any
        <math|\<alpha\>\<in\>I>, since <math|x> is the limit of sequence
        <math|x<rsub|k>> in the closed set <math|C<rsub|\<alpha\>>>,
        <math|x\<in\>C<rsub|\<alpha\>>> also. [Since this is true for all
        <math|\<alpha\>>] So <math|x\<in\>\<cap\><rsub|\<alpha\>\<in\>I>C<rsub|\<alpha\>>>.
        [Therefore <math|\<cap\><rsub|\<alpha\>\<in\>I>C<rsub|\<alpha\>>> is
        closed.]

        <item>Let <math|C<rsub|1>,C<rsub|2>> be closed in
        <math|<around*|(|M,d|)>>. Then <math|C<rsub|1>\<cup\>C<rsub|2>> is
        closed.

        Proof: Let <math|<around*|{|x<rsub|n>|}><rsub|n=1><rsup|\<infty\>>>
        be a sequence in <math|C<rsub|1><with|font-shape|right|\<cup\>C<rsub|2>>>
        converging to <math|x>. Then either <math|C<rsub|1>> or
        <math|C<rsub|2>> contains infinitely many terms of
        <math|<around*|{|x<rsub|n>|}>>; for example, assume
        <math|<around*|{|x<rsub|n<rsub|k>>|}><rsub|k=1><rsup|\<infty\>>> is a
        subsequence with terms in <math|C<rsub|i>> ,<math|i> is 1 or 2;
        (Fact: for any convergent sequence, any subsequence also converges to
        the same limit.) <math|lim<rsub|n\<rightarrow\>\<infty\>>
        x<rsub|n>=lim<rsub|k\<rightarrow\>\<infty\>>
        x<rsub|n<rsub|k>>\<in\>C<rsub|i>\<subset\>C<rsub|1>\<cup\>C<rsub|2>>.
        [Therefore, <math|C<rsub|1>\<cup\>C<rsub|2>> is closed.]

        <item>By induction, if <math|C<rsub|1>,C<rsub|2>,\<ldots\>,C<rsub|n>>
        are closed, then so is <math|\<cup\><rsub|i=1><rsup|n>C<rsub|i>>.

        <\itemize>
          <item>Alternative Proof (modifying the proof above): any convergent
          sequence in <math|\<cup\><rsub|i=1><rsup|n>C<rsub|n>> must contains
          a subsequence in one of <math|C<rsub|i>>; because <math|C<rsub|i>>
          is closed, the limit of the subsequence (which is the limit of the
          original sequence) is in <math|C<rsub|i>>, which is contained in
          <math|\<cup\><rsub|i=1><rsup|n>C<rsub|i>>. [Therefore
          <math|\<cup\><rsub|i=1><rsup|n>C<rsub|i>> is closed.]
        </itemize>

        <item>NOT true for <with|font-series|bold|infinitely> many closed
        sets: <math|C<rsub|n>=<around*|[|1/n,3-1/n|]>> is closed for each
        <math|n>, but their union <math|\<cup\><rsub|n=1><rsup|\<infty\>>C<rsub|n>=<around*|(|0,3|)>>
        is not closed.
      </itemize>
    </itemize>

    <hrule>

    Next time: a set <math|U> is open if and only if its complement
    <math|U<rsup|c>=M-U> is closed.

    <item>WARNING: if a set is NOT open, then (not true that) it is
    closed<text-dots> Set can be neither open nor closed.

    <hrule>

    \ Proposition: a set <math|U >is open iff its complement
    <math|U<rsup|c>=M-U> is closed.

    <\itemize>
      <item>a set <math|U >is NOT open iff its complement
      <math|U<rsup|c>=M-U> is NOT closed.

      <item>1. Suppose <math|U> is NOT open, [<math|U<rsup|c> >is not
      closed<text-dots>]

      <math|U> is open \<Leftrightarrow\> \<forall\><math|x>\<in\><math|U>,
      <math|\<exists\>x\<gtr\>0,B<rsub|r><around*|(|x|)>\<subset\>U>

      <math|U is NOT open\<Leftrightarrow\>\<space\>\<exists\>x\<in\>
      U,\<forall\>r\<gtr\>0,B<rsub|r<around*|(|x|)>><neg|\<subset\>>U\<Leftrightarrow\>\<exists\>x\<in\>U,\<forall\>r\<gtr\>0,\<exists\>y\<in\>U<rsup|c>,d<around*|(|y,x|)>\<less\>r>

      [IDEA: let <math|r=1/k >to construct a sequence]\ 

      Fix this <math|x=x<rsub|0>>. Let <math|r=1,1/2,1/3,\<ldots\>.1/k,\<ldots\>;>let
      <math|y=y<rsub|k>.>This is a sequence of points in <math|U<rsup|c>>
      converges to<math|> <math|x<rsub|0>\<in\> U> because:
      <math|d<around*|(|y<rsub|k>,x|)>\<less\>1/k> \<longrightarrow\>0 [by
      the definition of convergence]<math|>

      Therefore <math|U<rsup|c>> is NOT closed.

      (Remark: it means: if <math|U> is not open, then its boundary in
      nonempty.)

      <item>2. Suppose <math|U<rsup|c>=M-U> is NOT closed [Show: <math|U is
      not open>]. So there's a sequence <math|y<rsub|k> \ in \ U<rsup|c>,such
      \ that,lim<rsub|k\<rightarrow\>\<infty\>>y<rsub|k>=x\<in\> U.>

      [Idea: draw a picture]
    </itemize>
  </shown>>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|page-medium|paper>
  </collection>
</initial>