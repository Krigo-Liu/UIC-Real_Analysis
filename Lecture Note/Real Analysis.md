# Metric Space: 

## Motivation: 鬼知道我为什么要学这个东西

## Definition: 定义 Metric space
- Let $M$ be a set. A **metric** on *M* (also known as a distance function) is a function $d: M \times M \rightarrow R$ which satisfied: for all $x, y, z \in M$ 
	1. "Positive definite"  $d(x,y)\geq 0$  . Rquality holds $(d(x,y) = 0)$ if and only if $x=y$ 
	2. “Summetry” $d(x,y) = d(y,x)$
	3. "Triangel inequality" $d(x,z)\leq d(x,y)+d(y,z)$
- a metric space is a set $M$ togeher with a metric $d$
	- Example: 
		- In real line $(\mathbb{R},d)$ , where $d(x,y) = |x-y|$
		- 
- 








# Continuous functions (in metric spaces)

在以前我们知道：$f:\mathbb{R} \rightarrow \mathbb{R}$ is continuous at $c$ if : $\forall \epsilon >0, \exists \delta > 0,(|x-c|<\delta) \rightarrow |f(x)-f(c)<\epsilon|$ 

Then we create tow metric space: $(X,d_{X})\text{ }(Y,d_{Y})$
