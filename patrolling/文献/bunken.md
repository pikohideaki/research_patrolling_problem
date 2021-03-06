
# 文献メモ

+ A Survey on Multi-robot Patrolling Algorithms
    * sec. 1
        * 領域警備を考える（領域の周りを巡回するのではなく領域の中を動く）
        * 目標：idletimeの平均値，最大値の最小化など様々
    * sec. 2
        * 現実問題への応用としては，地雷撤去や大災害時における救出戦略など
    * sec. 3
        * [2] Multi-Agent Patrolling: an Empirical Analysis of Alternative Architectures.
            * agentの認識はreactiveな場合（ローカルな情報のみ得られる）とcognitiveな場合（全体の情報が得られる）が考えられる．
            * 辺のコストがすべて1という簡単化をしている．考察している環境が少ない
        * [4] Almeida, A.: Patrulhamento Multiagente em Grafos com Pesos. M.Sc. Thesis, Centro de Informática, Univ. Federal de Pernambuco, Recife, Brasil (2003) (in Portuguese)
            * [2]を補う結果
            * 辺の重みを考慮．より多くの環境を考えている
            * “Heuristic Pathfinder Cognitive Coordinator” という戦略
        * [5] Elmaliach, Y., Agmon, N., Kaminka, G.: Multi-Robot Area Patrol under Frequency Constraints. In: Int. Conf. on Robotics and Automation, Rome, Italy, pp. 385–390 (2007)
            * idle-time最大値の最小化
            * Hamilton cycleを求めて等間隔に巡査達を配置し巡回すれば最適 (cyclic strategy)
            * 利点は巡査の人数によらず適用できる戦略であること
            * 欠点は巡査達が決定論的に動くので賢い侵入者に対応されうること
        * [6] Chevaleyre, Y.: Theoretical Analysis of the Multi-agent Patrolling Problem. In: Proc. of the Int. Conf. On Intelligent Agent Technology, Beijing, China, pp. 302–308 (2004)
            * cyclic strategyとpartitioning strategy
            * 前者は密なグラフや大きな閉路，後者は領域を分割するような長い辺があるときに有利
    * sec. 4
        * [7] Santana, H., Ramalho, G., Corruble, V., Ratitch, B.: Multi-Agent Patrolling with Reinforcement Learning. In: Proc. of the Third Int. Joint Conf. on Autonomous Agents and Multiagent Systems, New York, vol. 3, pp. 1122–1129 (2004)
            * 強化学習問題
            * 多くの状況でadaptive solutionはnon-adaptive solution より優れるという結果に
            * 集中管理ではなく巡査それぞれの適応による戦略
        * [8] Menezes, T., Tedesco, P., Ramalho, G.: Negotiator Agents for the Patrolling Task. In: Sichman, J.S., Coelho, H., Rezende, S.O. (eds.) IBERAMIA 2006 and SBIA 2006. LNCS (LNAI), vol. 4140, pp. 48–57. Springer, Heidelberg (2006)
            * negotiation mechanism
                * ?
        * [9] Hwang, K., Lin, J., Huang, H.: Cooperative Patrol Planning of Multi-Robot Systems by a Competitive Auction System. In: Int. Joint Conf., Fukuoka, Japan, August 18-21 (2009)
            * cooperative auctions system
        * [10] Almeida, A., Ramalho, G., Sanana, H., Tedesco, P., Menezes, T., Corruble, V., Chaveleyre, Y.: Recent Advances on Multi-Agent Patrolling. In: Bazzan, A.L.C., Labidi, S. (eds.) SBIA 2004. LNCS (LNAI), vol. 3171, pp. 474–483. Springer, Heidelberg (2004)
            * 2004年までの様々なアプローチを分析
            * 最適戦略は領域の形状と巡査の人数による
            * TSP cyclic 戦略がほとんどの場合最適だが，動的な環境の場合や巨大グラフの場合，長い辺が存在する場合などに問題がある．

+ Theoretical Analysis of the Multi-agent Patrolling Problem
    * sec.2. The patrolling task
        * $n$ 点からなるグラフ $G = (V, E)$
        * 辺 $(i, j)$ には移動距離 $c_{ij}$ が定義されており，移動にちょうどこの時間かかる．
        * 頂点間距離は三角不等式を満たす．$(c_{ij} + c_{jk} \geq c_{ik})$
        * 時刻 $0$ に $r$ 人の巡査は $G$ のいずれかの頂点に配置
        * *strategy* とは $j$ 番目に訪れた点を返す関数
            * <font color="red">巡査は速さ $1$ で動き続ける運行しか考えていない？</font>
        * 頂点 $i$ の時刻 $t$ における *idleness* は，
        点 $i$ が最後にいずれかの巡査に訪問されてから経過した時間．（ただし，時刻 $0$ には $0$ とする．）
        * 全頂点の *idleness* の最大値を警邏戦略の評価に用いる．
        理論的分析においては平均値より最大値の方が扱いやすいため．
    * sec.3. Previous Work
        * Machado[1] の研究
            * agent type (reactive vs. cognitive)
            * agent communication (allowed vs. forbidden)
            * coordination scheme(central and explicit vs. emergent)
            * agent perception (local vs. global)
            * decision-making( random selection vs. goal-oriented selection)
    * sec.4. The cyclic strategies
        * single-agent
            * TSPの解に基づく閉路 $S_{\rm TSP}$ が最適（定理1）
                * <font color="red">TSPの解は頂点をちょうど1度ずつ訪れる閉路だが，どのように帰着している？</font>
            * $S_{\rm Chr}$ により近似比 $1.5$ の $O(n^3)$ アルゴリズムでTSPの解が得られる．
        * multi-agent
            * *multi-agent cyclic strategy* ： $S_{\rm Chr}$ に基づき，巡査をほぼ等間隔に配置して同じ向きに巡回させる戦略．
            * 巡査は時刻 $0$ にいずれかの頂点から出発する設定なので，完全に等間隔にはならない．
        * 最適解との差の評価
    * sec.5. Partition-based strategies
    * sec.7. Conclusion
        * 長い辺が無い限り，partition-based strategyよりcyclic strategiesの方が有利．

+ Multi-agent Patrolling An Empirical Analysis of Alternative Architectures
    * sec.1. Introduction
        * To patrol is literally "the act of walking or traveling around the area, at regular intervals, in order to protect or supervise it"([1] Abate, Frank R.: The Oxford Dictionary and Thesaurus: The Ultimate Language Reference for American Readers. Oxford Univ. Press. 1996).
    * sec.2. The Patrolling Task
        * 平面上の連続領域を skeltonization してグラフの警邏に簡略化する．ボロノイ図から生成
        * 様々な状況が考えられる．
            * 動く障害物
            * 辺の長さが動的に変化
            * ある部分領域は優先的に警備しなければならない
            * 辺の長さが異なる
        * これらの複雑な状況は無いとする
            * 動く障害物はない
            * 辺の長さは静的
            * すべての点は同じ優先度
            * <font color="red">辺の長さがすべて $1$</font>
    * sec.3. Methodology
        * ssec.3.1. Evaluation Criteria
            * worst idlenessと探索時間を解の評価基準とする
            * cycleとは巡査が現在の点から隣の点に移動するのに必要な時間 ($= 1$?)
            * *instantaneous node idleness* ：その点が訪問されるまでのサイクル数
            * *graph idleness*, idleness は $n$-cycle simulation 後の instantaneous node idleness の平均値．
            * *exploration time* ：巡査達が全点を訪問するまでのサイクル数
            * もし巡査同士の協力が十分でない場合，新たな巡査の追加による改善が最小になる．<font color="red">←？</font>  
            → $(\textrm{巡査数}/\textrm{ノード数})$で正規化した値を評価値とする<font color="red">←？</font>  

+ Optimal Patrolling of Fragmented Boundaries
    * vital segments と neutral segments からなるsimple curve
    * idle-time 最小化
        * <font color="red">我々の問題では訪問間隔は最小化するのではなく最初に決まっており，代わりに利得最大部分集合を選ぶ．</font>
    * $\textrm{agents maximum speed} = 1$
    * 軌跡を求める
    * partition strategy と cyclic strategy
        * partition based strategy ： 長さ $L$ の $k$ 個の線分で $V$ を覆えるような最小の $L$ で idle-time $2L$．
        * cyclic strategy ： $k$ 人の巡査が等間隔に配置して同じ向きに周回運動をする． idle-time $1/k$．
    * 最高速度が異なると cyclic も partition も最適でない例がある
    * 地形により移動速度が異なることも考えられるが簡単のため一定に
    * 線分なら partition が最適
        * <font color="red">証明のアイデアは我々と同じ．$L$ が $Q/2$ 以下かどうか判定すればよいので全点警邏判定では同じ状況．</font>
    * 閉曲線なら partition か cyclic が最適
    * sec.2.
        * 長さ $L$ の $k$ 個の線分で $V$ を覆えるような最小の $L$ で idle-time $2L$ が最適（利得無し全点）
    * sec.3. Optimal Patrolling Strategy for the Cycle

+ Strategy Synthesis in Adversarial Patrolling Games
    * sec. 1. Introduction
        * 状況設定
            * 侵略者は巡査の動きやその戦略まで知っているが，巡査のランダムな行動選択までは予測できない．
            * 巡査は1人？
            * patrolling problem $\mathcal{G}$
                * nodes $U$
                * targets $T$
                * edges $E \subseteq U \times U$
                * the initial position of the defender $\hat u \in T$
                * $d: T \to \mathbb{N}$
            * 巡査
                * 巡査は1秒毎に1本の辺を渡る．長い辺は途中の警備対象でないノードを挟めば表現できる．
                * 巡査は前回の選択とは独立にランダムに次の行動を選択する．
                * 巡査の戦略とは $\sigma : \mathcal{H} \to \Delta(U)$ のこと．
                    $\mathcal{H}$ は空でないノードの列で，$\Delta(U)$ は $U$ 上の確率分布．
            * 侵略者
                * 侵略者の戦略とは $\pi: \mathcal{H} \to T \cup \{ \bot\}$

+ A Realistic Model of Frequency-Based Multi-Robot Polyline Patrolling
    * sec. 2.
        * 各巡査の担当する領域への分割を，"negotiation-based approach" で行うものもあるが，本稿では訪問頻度による指標で行う．
    * sec. 3.
        * 目的
            * Uniformity. （各警備対象を訪問する頻度をなるべく同程度にする）
            * Maximal average. （各警備対象を訪問する頻度の平均値を最大化）
            * Maximal minimum frequency (under-bounded frequency)（警備対象のうち訪問頻度が最小のものを最大化）
        * 閉路でない線分上で巡査が1人のときは完全なUniformityは実現できない．
        * 巡査が複数のときはもう少し改善できる．→ FOPアルゴリズム
    * sec. 4.
        * 実際のロボットで実験

+ On Fence Patrolling by Mobile Agents
    * fence, $k$-mobile-agents, max-speed $v_1, \ldots, v_k > 0$
    * 塀のすべての点を警備
    * 判定 / idle-time最小化 を閉路で
    * $\textrm{idle-time} \geq 1/\sum v_i$
    * 戦略 $\mathcal{A}_1$：速さに比例した長さを警備．速さがすべて同じなら最適．
