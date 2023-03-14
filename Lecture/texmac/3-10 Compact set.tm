<TeXmacs|2.1.1>

<style|beamer>

<\body>
  <screens|<\shown>
    <strong|Compact set>

    Let <math|<around*|(|M,d|)>> be a metric space. <math|K\<subset\>M>.

    <\itemize>
      <item>(Topoligical) Compactness: <math|K> is a compact set if any open
      cover has a finite subcover

      <\itemize>
        <item>Open cover: <math|<around*|{|U<rsub|a>|}><rsub|a\<in\>I>> each
        open in <math|K> such that <math|\<cup\><rsub|a\<in\>I>U<rsub|a>\<supset\>K>

        <item>Finite subcover: finitely many open sets in
        <math|<around*|{|U<rsub|a>|}><rsub|a\<in\>I>> such that it still
        covers <math|K>.
      </itemize>

      <item>(Sequential)<strong| Compactness: any sequence
      <math|<around*|{|x<rsub|k>|}>\<in\>K> has a convergent subsequence with
      limit also in <math|K.>>

      <\itemize>
        <item>Subsequence: <math|<rprime|''>k<rsub|1>\<less\>k<rsub|2>\<less\>\<cdots\>\<less\><rprime|''>>
      </itemize>

      <item>Theorem: the 2 definitions are equivalent (in metric space)

      <strong|<item>Fact: Compact subsets are closed and bounded>

      <\itemize>
        <item>A subset <math|B\<supset\>M> is bounded if it is contained in
        some ball<text-dots>

        <math|B\<subset\>B<rsub|R><around*|(|y|)>> for some <math|y\<in\>M>
        and some large <math|R\<gtr\>0>.
      </itemize>

      <item>Proof: <math|>

      <\itemize>
        <item>Suppose the compact set <math|K > is not closed. There exists a
        sequence in <math|K,x<rsub|k>\<in\>K,>coverging to
        <math|x\<notin\>K.> Therefore, for any subsequence of
        <math|<around*|{|x<rsub|k>|}>>, the limit is still
        <math|x\<ldots\>>Contradicting compactness<text-dots>\ 

        <\itemize>
          <item>[Fact used: if a seq conv, then any of its subseq also conv
          to same point<text-dots>]
        </itemize>

        <item>Next, suppose the compact set <math|K> is not bounded. Fix some
        <math|O\<in\>M>, then for any natural number <math|n>, choose
        <math|x<rsub|n>> such that <math|d<around*|(|x<rsub|n>,O|)>\<gtr\>n>.
        Therefore, <math|<around*|{|x<rsub|n>|}>>(and any for its
        subsequences) must be unbounded and cannot coverge\ 
      </itemize>

      <item>Fact: In <math|\<bbb-R\><rsup|n>>, a subset <math|K> is
      (sequentially) compact iff it is closed and bounded. [i.e. the converse
      is also true]

      <\itemize>
        <item>Proof: [idea: use boundedness and Bolzano-Weierstrass on each
        coordinate, to find subseq of subseq of subseq..., converging to the
        same set <math|K>(by closedness).]

        <item>Let <math|K\<subset\>\<bbb-R\><rsup|n>> be bounded and closed.
        Consider any sequence <math|<around*|{|x<rsup|<around*|(|k|)>>|}>> in
        <math|K>. We wish to show that it has a subsequence converging also
        to <math|K>.

        <item>Beacause the first corrdinate are bounded, we can find a
        subsequnece (also denoted <math|<around*|{|x<rsup|<around*|(|k|)>>|}>>)
        such that the first coordinate converges:

        \ <math|lim<rsub|k\<rightarrow\>\<infty\>>x<rsub|1><rsup|<around*|(|k|)>>=x<rsup|><rsub|1>>

        <item>Similarly, because the 2nd coordinates are also bounded, we can
        further choose a subsequence (also denoted
        <math|<around*|{|x<rsup|<around*|(|k|)>>|}>>) such that\ 

        <math|lim<rsub|k\<rightarrow\>\<infty\>>x<rsub|2><rsup|<around*|(|k|)>>=x<rsup|><rsub|2>>

        <item>By induction, in the end we have a subsequence converging to
        such that very coordinate converge to some number:
        <math|\<forall\>i,lim<rsub|k\<rightarrow\>\<infty\>>x<rsub|i><rsup|<around*|(|k|)>>=x<rsub|i>>

        <item>Therefore, as a sequnce in <math|\<bbb-R\><rsup|n>,lim<rsub|k\<rightarrow\>\<infty\>>x<rsup|<around*|(|k|)>>=x>,
        where <math|x=<around*|(|x<rsub|1>,\<ldots\>x<rsub|n>|)>>

        <\itemize>
          <item>[Fact used in (<math|\<bbb-R\><rsup|n>,<around*|\<\|\|\>|\<bullet\>|\<\|\|\>>>,
          sequence converges if and only if each coordiniate converges]
        </itemize>

        <item>Finally, the limit <math|x\<in\>K> beacause <math|K> is colsed

        <item>Thereforem any closed and bounded subset <math|K> in finite
        dimensional <math|\<bbb-R\><rsup|n>>
        (with<math|<around*|\<\|\|\>|\<bullet\>|\<\|\|\>><rsub|2> norm>) is
        (sequentially) compact.
      </itemize>

      <item>Counter-example in <math|l<rsup|1>>

      <item>(Continuous functions on compact set).
    </itemize>

    \;

    <\itemize>
      <item>Key example: a closed and bounded interval
      <math|<around*|[|a,b|]>\<subset\>\<bbb-R\>> is \Pcompact\Q.

      <item>Therefore (Bolzano-Weierstrass theorem): any sequence
      <math|<around*|(|x<rsub|n>|)>> in <math|<around*|[|a,b|]>> has a
      convergent subsequence (with limit still in <math|<around*|[|a,b|]>>)

      Conter-intuitive example: <math|x<rsub|k>=sin<around*|(|k|)>\<in\><around*|[|-1,1|]>.>

      (Compare: false for <math|<around*|\<nobracket\>|<around*|(|a,b|\<nobracket\>>|]>>:
      some sequence will converge to <math|a><text-dots>

      (Compare: false for <math|<around*|[|a,\<infty\>|)>>: <math|a,
      a+1,a+2,a+3\<ldots\>>

      <item>Theorem: Any nested sequence of closed and bounded interval in
      <math|\<bbb-R\>> has nonempty intersection: if
      <math|I<rsub|k>=<around*|[|a<rsub|k>,b<rsub|k>|]>>, such that
      <math|a<rsub|1>\<leqslant\>a<rsub|2>\<leqslant\>\<ldots\>,b<rsub|1>\<geqslant\>b<rsub|2>\<geqslant\>b<rsub|3>,then\<cap\><rsub|k=1><rsup|\<infty\>><around*|[|a<rsub|k>,b<rsub|k>|]><neg|=>\<emptyset\>>

      <item>Theorem: (Heine-Borel). For a compact <math|<around*|[|a,b|]>>,
      for any <math|>collection of open sets
      <math|<around*|{|U<rsub|a>|}><rsub|a\<in\>I>>
      \Qcovering\Q<math|<around*|[|a,b|]>>,
      <math|\<cup\><rsub|a\<in\>I>U<rsub|a>=<around*|[|a,b|]>>, then there is
      a finite subset <math|U<rsub|i>> such that
      <math|\<cup\><rsub|i=1><rsup|n>U<rsub|i>\<supset\><around*|[|a<rsub|i,b<rsub|i>>|]>>

      <\itemize>
        <item>Example when interval is not compact (and Heine-Borel fails):

        Define <math|U<rsub|n>=<around*|(|1/n,1|)>;\<cup\>>
      </itemize>

      \ 
    </itemize>
  </shown>>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>