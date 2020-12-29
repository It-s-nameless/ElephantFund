<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_帮助中心</title>
</head>
<body>

	<%@ include file="nav.jsp"%>

	<div class="container">
		<div class="row mt-3">
			<div class="col-sm-3">
				<div class="list-group" id="list-tab" role="tablist">
					<a class="list-group-item list-group-item-action active"
						id="list-home-list" data-toggle="list" href="#list-home"
						role="tab" aria-controls="home">基金基础知识</a> <a
						class="list-group-item list-group-item-action"
						id="list-profile-list" data-toggle="list" href="#list-profile"
						role="tab" aria-controls="profile">基金类型</a> <a
						class="list-group-item list-group-item-action"
						id="list-messages-list" data-toggle="list" href="#list-messages"
						role="tab" aria-controls="messages">基金投资风险</a> <a
						class="list-group-item list-group-item-action"
						id="list-settings-list" data-toggle="list" href="#list-settings"
						role="tab" aria-controls="settings">基金名词解释</a> <a
						class="list-group-item list-group-item-action" id="list-kh-list"
						data-toggle="list" href="#list-kh" role="tab" aria-controls="kh">开户相关</a>
					<a class="list-group-item list-group-item-action"
						id="list-zhgl-list" data-toggle="list" href="#list-zhgl"
						role="tab" aria-controls="zhgl">账户管理</a>

				</div>


			</div>

			<div class="col-sm">
				<div class="tab-content" id="nav-tabContent">
					<!-- 基金基础知识 -->
					<div class="tab-pane fade show active" id="list-home"
						role="tabpanel" aria-labelledby="list-home-list">

						<div class="card">
							<div class="card-body">
								<h5 class="card-title">基金基础知识</h5>
								<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
								<p class="card-text">证券投资基金是指通过发售基金份额，将众多投资者的资金集中起来，形成独立资产，由基金托管人托管，基金管理人管理，以投资组合的方法进行证券投资的一种利益共享、风险共担的集合投资方式。</p>
								<div class="accordion" id="accordionJJJC">
									<div class="card">
										<div class="card-header" id="headingOne">
											<h5 class="mb-0">
												<button class="btn btn-link" type="button"
													data-toggle="collapse" data-target="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne">
													基金参与者</button>
											</h5>
										</div>
										<div id="collapseOne" class="collapse show"
											aria-labelledby="headingOne" data-parent="#accordionJJJC">
											<div class="card-body">
												<p>投资者：自然人、机构。</p>
												<p>基金管理人：负责基金发起于经营管理的专业性机构，由基金管理公司担任。</p>
												<p>基金托管人：依据基金运行中“管理与保管分开”的原则对基金管理人进行监督和保管基金资产的机构。通常由有实力的商业银行和/或信托投资公司担任。</p>
												<p>基金注册登记机构：负责投资者账户的管理和服务、负责基金单位的注册登记以及红利发放等具体投资者服务内容的专门机构。如中国证券登记结算公司。</p>
												<p>基金代销机构：接受基金管理公司委托，代理开放式基金认购、申购和赎回业务的机构。基金代销机构可以是商业银行、证券公司、第三方基金销售公司。</p>
												<p>监管机构：中国证监会。</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingTwo">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseTwo"
													aria-expanded="false" aria-controls="collapseTwo">
													基金与股票的区别</button>
											</h5>
										</div>
										<div id="collapseTwo" class="collapse"
											aria-labelledby="headingTwo" data-parent="#accordionJJJC">
											<div class="card-body">
												<p>证券投资基金是一种投资受益凭证。股票是股份有限公司在筹集资本时向出资人发行的股份凭证。</p>
												<p>1)反映的关系不同。股票反映的是所有权关系，而证券投资基金反映的是信托关系。</p>
												<p>2)在操作上投向不同。股票是融资工具，其集资主要投向实业，是一种直接投资方式。而证券投资基金是信托工具，其集资主要投向有价证券，是一种间接投资方式。</p>
												<p>3)风险与收益状况不同。股票的收益是不确定的，其收益取决于发行公司的经营效益，投资股票有较大风险。证券投资基金采取组合投资，能够在一定程度上分散风险，风险小于股票，收益也较股票稳定。</p>
												<p>4)投资回收方式不同。股票没有到期日，股票投资者不能要求退股，投资者如果想变现的话，只能在二级市场出售。开放式基金的投资者可以按资产净值赎回基金单位，封闭式基金的投资者在基金存续期内不得赎回基金单位，如果想变现，只能在交易所或者柜台市场上出售，但存续期满投资者可以得到投资本金的退让。
												</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingThree">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseThree"
													aria-expanded="false" aria-controls="collapseThree">
													基金与债券的区别</button>
											</h5>
										</div>
										<div id="collapseThree" class="collapse"
											aria-labelledby="headingThree"
											data-parent="#accordionJJJC">
											<div class="card-body">
												<p>债券是政府、金融机构、工商企业等机构直接向社会借债筹措资金时，向投资者发行，并且承诺按一定利率支付利息并按约定条件偿还本金的债权债务凭证。</p>
												<p>1)反映的关系不同。债券反映的是债权债务关系，证券投资基金反映的是信托关系。</p>
												<p>2)在操作上投向不同。债券是融资工具，其集资主要投向实业，是一种直接投资方式。而证券投资基金是信托工具，其集资主要投向有价证券，是一种间接投资方式。</p>
												<p>3)风险、收益不同。债券的收益一般是事先确定的，其投资风险较小。证券投资基金的投资风险高于债券，收益也高于债券。证券投资基金的风险、收益状况比债券高，比股票小。</p>
											</div>
										</div>
									</div>
								</div>
								<a href="#" class="card-link">Card link</a> <a href="#"
									class="card-link">Another link</a>
							</div>
						</div>
					</div>

					<!-- 基金类型 -->
					<div class="tab-pane fade" id="list-profile" role="tabpanel"
						aria-labelledby="list-profile-list">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">基金类型</h5>
								<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
								<p class="card-text">…………</p>
								<p>根据不同标准，可以将证券投资基金划分为不同的种类：</p>
								<p>1)根据基金单位是否可增加或赎回，可分为开放式基金和封闭式基金。</p>
								<p>普通开放式基金一般不上市交易，可通过第三方销售机构、银行、券商等申购和赎回，基金份额规模不固定；封闭式基金有固定的存续期，存续期内基金份额规模固定，再通过证券交易场所上市交易，投资者可通过二级市场买卖。</p>
								<p>2)根据组织形态的不同，可分为公司型基金和契约型基金。</p>
								<p>基金通过发行基金股份成立投资基金公司的形式设立，通常称为公司型基金；由基金管理人、基金托管人和投资人三方通过基金契约设立，通常称为契约型基金。目前我国的证券投资基金均为契约型基金。</p>
								<p>3)根据投资对象的不同，可分为股票型基金、混合型基金、债券型基金、货币市场基金等。</p>
								<p>股票基金：80%以上的基金资产投资于股票的；债券基金：80%以上的基金资产投资于债券的；货币市场基金：仅投资于货币市场工具的，为货币市场基金；混合基金：投资于股票、债券和货币市场工具，并且股票投资和债券投资的比例不符合债券、股票基金规定的，为混合基金。</p>
								<p>从投资风险角度看，几种基金给投资人带来的风险是不同的。其中股票基金风险最高，货币市场基金风险最小，债券基金的风险居中。</p>
								<p>4)相同品种的投资基金由于投资风格和策略不同，风险也会有所区别。按风险程度又可分为：成长型、价值型、平衡型</p>
								<p>成长型——成长型基金是指以追求资本增值为基本目标，较少考虑当期收入的基金，主要以具有良好增长潜力的股票为投资对象。</p>
								<p>价值型——价值型基金是指以追求稳定的经常性收入为基本目标的基金，主要以大盘蓝筹股、公司债、政府债券等稳定收益证券为投资对象。</p>
								<p>平衡型——平衡型基金则是既注重资本增值又注重当期收入的一类基金。一般而言，成长型基金的风险大、收益高；收入型基金的风险小、收益也较低；平衡型基金的风险、收益则介于成长型基金与收入型基金之间。</p>
								<a href="#" class="card-link">Card link</a> <a href="#"
									class="card-link">Another link</a>
							</div>
						</div>			
					</div>
					
					<!-- 基金投资风险 -->
					<div class="tab-pane fade" id="list-messages" role="tabpanel"
						aria-labelledby="list-messages-list">
						
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">基金投资风险</h5>
								<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
								<p class="card-text">证券投资基金是指通过发售基金份额，将众多投资者的资金集中起来，形成独立资产，由基金托管人托管，基金管理人管理，以投资组合的方法进行证券投资的一种利益共享、风险共担的集合投资方式。</p>
								<div class="accordion" id="accordionExample">
									<div class="card">
										<div class="card-header" id="headingOne">
											<h5 class="mb-0">
												<button class="btn btn-link" type="button"
													data-toggle="collapse" data-target="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne">基金的选择</button>
											</h5>
										</div>
										<div id="collapseOne" class="collapse show"
											aria-labelledby="headingOne" data-parent="#accordionExample">
											<div class="card-body">
												<p>在做基金选择时，投资人必须注意以下几个问题：</p>
												<p class="strongtext">一、短线炒作还是长期投资？</p>
												<p>根据统计，全球股市大约有70%的时间都是在多头走势中，可见长期投资股票的获利是可以肯定的。但是，在这70%的多头走势当中，有四分之三的时间都是呈现窄幅整理，真正的巨幅涨势只停留在短时间内，时间波动难以掌握，短线炒作基金的结果，一方面徒增交易成本，另一方面也可能因此错失波段的涨升行情。有鉴于此，投资人应该避免短线炒作基金，抱持长期投资的正确观念，只要选择的基金操作绩效稳健良好，长期下来自然可以发挥时间的复利效果。因此，投资人也不宜买周转率过高的基金。因为基金周转率指的是基金在一定时间之内，买进或卖出股票的频率。周转率过高，一是表示基金经理人倾向短线炒作，另一则反映基金买进卖出的交易成本较高，会侵蚀基金的获利，投资者不可不慎。</p>
												<p class="strongtext">二、股票基金还是债券基金？</p>
												<p>在投资组合当中，应该适度纳入固定收益的投资工具，比如定存或债券等，来分散股票市场的波动风险。倘若投资者将所有资金都放在股票型基金而缺乏风险意识，一旦市场转多为空，将因此蒙受资产大幅缩水的危险。一般来说，如果您年纪尚轻，由于距离退休还有很长的一段时间，就算短期投资产生亏损也还有机会再赚回来，也就是承担风险的能力较高，因此可以将投资组合当中的较高比重放在股票基金上面。但若您年近半百，由于已逐渐届临退休时间，因此不宜承受过高的投资风险，股票基金的比重则宜调低。</p>
												<p class="strongtext">三、一家基金还是多家基金？</p>
												<p>虽然投资理财专家经常提醒投资者：“不要把鸡蛋放在同一个篮子里”，但是如果持有太多篮子，特别是这里的篮子本身已经是许多篮子的组合，管理起来也就相当不易了。在此建议投资人不要同时拥有超过六只以上的基金，因为，投资组合当中若有太多只基金容易造成重复投资的现象，非但无法进一步分散风险，反而增加管理上的困扰，还有进出场时点的问题。</p>
												<p class="strongtext">四、如何评价基金绩效？</p>
												<p>首先，不只以净值高低涨跌评断基金。许多投资者买了一只基金之后，就每天关心基金价值与净值有没有增长，如果净值没有动，就会心急地卖掉这只基金，而转进其它的基金。其实，净值下跌除了市场走低的因素之外，也有可能是因为配息之故，配息过后，净值自然会下跌，但这是代表资金已经分配给投资人，并非是基金操作绩效不佳。其次，不只以绝对投资报酬率来断定基金。一个好的基金应该是要当市场空头来临时，能发挥抗跌的绩效，跌幅小于大盘；而当多头来临时，涨幅高于大盘。因此，在评断基金绩效时，不应该只以绝对的投资报酬来论断，而应该同时考量相应大盘指数的表现，才能客观地评断该只基金的绩效表现是否稳健良好。</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingTwo">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseTwo"
													aria-expanded="false" aria-controls="collapseTwo">
													风险承担能力</button>
											</h5>
										</div>
										<div id="collapseTwo" class="collapse"
											aria-labelledby="headingTwo" data-parent="#accordionExample">
											<div class="card-body">
												<p>在投资市场里，是没有所谓的免费午餐的。富贵险中求，回报率越高，风险就愈大，风险与回报率永远成正比。投资者在确定自己能够承受风险能力的时候，需要考虑如下因素：</p>
												<p>一是年龄和赚钱能力。年轻人来日方长，拥有持续的赚钱能力，较能承受风险，可选择风险性较大的基金；</p>
												<p>二是个人财产状况及家庭的负担。通常持有较多现金的投资者可承受较大的风险；有固定收入者，风险承担能力亦较事无定业的人为高；</p>
												<p>三是投资收益的目标及年限。步入生儿育女的婚龄青年，较多的是考虑在短期内买楼结婚，又或要供养子女上学和养育父母，承担风险的能力亦有限。年长者期望靠投资的收益作养老金之用，则只考虑把低风险的基金作为投资对象。</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingThree">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseThree"
													aria-expanded="false" aria-controls="collapseThree">
													投资主要风险</button>
											</h5>
										</div>
										<div id="collapseThree" class="collapse"
											aria-labelledby="headingThree"
											data-parent="#accordionExample">
											<div class="card-body">
												<p>1)流动性风险：基金面临巨额赎回或暂停赎回的极端情况时，基金投资人有可能不能以当日单位基金资产净值全额赎回。如投资人选择延迟赎回，则要承担后续赎回日单位基金资产净值下跌的风险。</p>
												<p>2)申购、赎回价格未知的风险：投资人在当日进行基金买卖时，所参考的单位基金资产净值是上一个基金交易日的数据，而当日基金净值和买卖价格尚无法确定。因此投资者要承担一定的未知风险。</p>
												<p>3)基金投资风险：和封闭式基金一样，开放式基金也面临由于证券市场价格波动引起的投资风险。</p>
												<p>4)机构运作风险：主要包括系统运作风险、管理风险、经营风险等。</p>
												<p>5)不可抗力风险：指战争、自然灾害等不可抗力发生时给基金投资人带来的风险。</p>
												
											</div>
										</div>
									</div>
									
									<div class="card">
										<div class="card-header" id="headingFour">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseFour"
													aria-expanded="false" aria-controls="collapseFour">
													开放式基金收益来源</button>
											</h5>
										</div>
										<div id="collapseFour" class="collapse"
											aria-labelledby="headingFour"
											data-parent="#accordionExample">
											<div class="card-body">
												<p>1)利息收入：指投资国债、金融债、企业债或银行存款产生的利息给付；</p>
												<p>2)资本利得：指买卖股票或债券获得的差价收入；</p>
												<p>3)其他收入：指运用基金资产带来的成本或费用节约计入的收入。</p>
												<p>这些收益均包含在基金单位资产净值中，到一定时候会按照基金契约以分红形式分配给投资者。</p>
												
											</div>
										</div>
									</div>
									
									
									<div class="card">
										<div class="card-header" id="headingFive">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseFive"
													aria-expanded="false" aria-controls="collapseFive">
													个人投资开放式基金收益来源</button>
											</h5>
										</div>
										<div id="collapseFive" class="collapse"
											aria-labelledby="headingFive"
											data-parent="#accordionExample">
											<div class="card-body">
												<p>基金买卖价差：随着证券市场的起伏波动，基金单位净值将不断发生变化，因而基金申购、赎回的价格也会不断涨跌。如果投资人能够把握市场机会，在有利的时机进行开放式基金的交易，就能实现高抛低吸的价差收益。</p>
												<p>基金红利：</p>
												<p>1)现金红利：即向投资者分配现金。</p>
												<p>2)红利再投资：是将投资人分得的收益再投资于基金，并折算成相应数量的基金单位。</p>
												
											</div>
										</div>
									</div>
									
									
									
								</div>
								<a href="#" class="card-link">Card link</a> <a href="#"
									class="card-link">Another link</a>
							</div>
						</div>
					</div>
					
					<!-- 基金名词解释 -->
					<div class="tab-pane fade" id="list-settings" role="tabpanel"
						aria-labelledby="list-settings-list">
						
					</div>
					
					<!-- 开户相关 -->
					<div class="tab-pane fade" id="list-kh" role="tabpanel"
						aria-labelledby="list-kh-list">
						
					</div>
					
					<!-- 账户管理 -->
					<div class="tab-pane fade" id="list-zhgl" role="tabpanel"
						aria-labelledby="list-zhgl-list">
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>