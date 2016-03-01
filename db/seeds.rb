
Party.create(name: "Independent")
Party.create(name: "Democrat")
Party.create(name: "Republican")
Party.create(name: "Socialist")
Party.create(name: "Libertarian")
Party.create(name: "Royalist")
Party.create(name: "Green")


User.create(
  name: "Nick Casta\ñeda",
  email: "npcastaneda@gmail.com",
  password: "password",
  password_confirmation: "password",
  prof_pic_url: "https://lh3.googleusercontent.com/-z8nJcncRloA/AAAAAAAAAAI/AAAAAAAAAFE/-VYqYdc1w_U/photo.jpg",
  party_id: 1,
  city: "Sylmar",
  state: "CA",
  admin: true
)

9.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password",
    prof_pic_url: Faker::Avatar.image,
    party_id: Faker::Number.between(1, 7),
    city: Faker::Address.city,
    state: Faker::Address.state_abbr
  )
end

users = User.all
5.times do
  users.each { |user| user.transcripts.create!(
    title: Faker::Company.buzzword,
    content: Faker::Lorem.paragraphs(5).join(" "),
    date: Faker::Date.between(100.days.ago, Date.today)
  ) }
end
users[0].transcripts.create!(
  title: "Seventh 2016 Republican Debate",
  content: "BLITZER: It's time for the candidates to introduce themselves right now. You'll each have 30 seconds. Dr. Carson, you're first. BREAK
    CARSON: If someone had tried to describe today's America to you 30 years ago, you would have listened in disbelief. Americans know that our nation is heading off the abyss of destruction, secondary to divisiveness, fiscal irresponsibility, and failure to lead. BREAK
    Marco, Donald, Ted, John, we will not solve any of these problems by trying to destroy each other. What we need to do is be looking for solutions tonight. It's not about us, it's about the American people. BREAK
    BLITZER: Governor Kasich? BREAK
    KASICH: Well, you know, on the way over here, even getting ready earlier and sitting in the green room and watching the early coverage, you know, my father carried mail on his back and his father was a coal miner and my mother's mother was an immigrant, could barely speak English. And I'm standing on this stage. It's pretty remarkable. But I want to tell you, there's a lot of young people watching tonight. You can do whatever you want to do in your life. America is an amazing country, where a kid like me can grow up to run for president of the United States and be on this stage tonight. So to all the young people that are out there, your hopes, your dreams, pursue them. Shoot for the stars. America's great, and you can do it. Thank you, Wolf. BREAK
    BLITZER: Senator Rubio? BREAK
    RUBIO: Well, thank you. This election, we have to decide the identity of America in the 2ist century, but as part of this primary, we have to find out our identity as a party and as a movement. BREAK
    Thirty-six years ago, Ronald Reagan and George H.W. Bush began the Reagan Revolution. For a generation, they defined conservatism as limited government and free enterprise and a strong national defense. But they also appealed to our hopes and our dreams. Now we have to decide if we are still that kind of party and still that kind of movement, or if we're simply going to become a party that preys on people's angers and fears. BREAK
    I hope we remain that conservative movement that appeals to our hopes and our dreams and the belief that America will always be better in its future than it's been in its story history. BREAK
    BLITZER: Senator Cruz? BREAK
    CRUZ: Welcome to Texas. BREAK
    Here, Texas provided my family with hope. Here, my mom became the first in her family ever to go to college. Here, my dad fled Cuba and washed dishes, making 50 cents an hour to pay his way through the University of Texas. I graduated from high school at Second Baptist not too far away from here. BREAK
    When I ran for Senate, I promised 27 million Texans I would fight for you every day, and not for the Washington bosses. BREAK
    And, I'll tell you, as I travel the state, Democrats tell me I didn't vote for you, but you're doing what you said you would do. And, as president, I will do the same. BREAK
    BLITZER: Mr. Trump. BREAK
    TRUMP: Thank you. My whole theme is make America great again. We don't win anymore as a country. We don't win with trade, we don't win with the military. ISIS, we can't even knock out ISIS, and we will, believe me. We will. BREAK
    We don't win in any capacity with healthcare. We have terrible health care, Obamacare is going to be repealed and replaced. We just don't win. BREAK
    You look at our borders, they're like swiss cheese, everybody pours in. BREAK
    We're going to make a great country again. We're going to start winning again. We're going to win a lot, it's going to be a big difference, believe me. It's going to be a big difference.",
  date: "20160128"
)
users[1].transcripts.create!(
  title: "Obama - 2009 Inaugural Address",
  content: "My fellow citizens: I stand here today humbled by the task before us, grateful for the trust you have bestowed, mindful of the sacrifices borne by our ancestors. I thank President Bush for his service to our nation, as well as the generosity and cooperation he has shown throughout this transition. BREAK
    Forty-four Americans have now taken the presidential oath. The words have been spoken during rising tides of prosperity and the still waters of peace. Yet, every so often the oath is taken amidst gathering clouds and raging storms. At these moments, America has carried on not simply because of the skill or vision of those in high office, but because We the People have remained faithful to the ideals of our forbearers, and true to our founding documents. BREAK
    So it has been. So it must be with this generation of Americans. BREAK
    That we are in the midst of crisis is now well understood. Our nation is at war, against a far-reaching network of violence and hatred. Our economy is badly weakened, a consequence of greed and irresponsibility on the part of some, but also our collective failure to make hard choices and prepare the nation for a new age. Homes have been lost; jobs shed; businesses shuttered. Our health care is too costly; our schools fail too many; and each day brings further evidence that the ways we use energy strengthen our adversaries and threaten our planet. BREAK
    These are the indicators of crisis, subject to data and statistics. Less measurable but no less profound is a sapping of confidence across our land - a nagging fear that America's decline is inevitable, and that the next generation must lower its sights. BREAK
    Today I say to you that the challenges we face are real. They are serious and they are many. They will not be met easily or in a short span of time. But know this, America - they will be met. BREAK
    On this day, we gather because we have chosen hope over fear, unity of purpose over conflict and discord. BREAK
    On this day, we come to proclaim an end to the petty grievances and false promises, the recriminations and worn out dogmas, that for far too long have strangled our politics. BREAK
    We remain a young nation, but in the words of Scripture, the time has come to set aside childish things. The time has come to reaffirm our enduring spirit; to choose our better history; to carry forward that precious gift, that noble idea, passed on from generation to generation: the God-given promise that all are equal, all are free, and all deserve a chance to pursue their full measure of happiness. BREAK
    In reaffirming the greatness of our nation, we understand that greatness is never a given. It must be earned. Our journey has never been one of short-cuts or settling for less. It has not been the path for the faint-hearted - for those who prefer leisure over work, or seek only the pleasures of riches and fame. Rather, it has been the risk-takers, the doers, the makers of things - some celebrated but more often men and women obscure in their labor, who have carried us up the long, rugged path towards prosperity and freedom. BREAK
    For us, they packed up their few worldly possessions and traveled across oceans in search of a new life. BREAK
    For us, they toiled in sweatshops and settled the West; endured the lash of the whip and plowed the hard earth. BREAK
    For us, they fought and died, in places like Concord and Gettysburg; Normandy and Khe Sahn. BREAK
    Time and again these men and women struggled and sacrificed and worked till their hands were raw so that we might live a better life. They saw America as bigger than the sum of our individual ambitions; greater than all the differences of birth or wealth or faction. BREAK
    This is the journey we continue today. We remain the most prosperous, powerful nation on Earth. Our workers are no less productive than when this crisis began. Our minds are no less inventive, our goods and services no less needed than they were last week or last month or last year. Our capacity remains undiminished. But our time of standing pat, of protecting narrow interests and putting off unpleasant decisions - that time has surely passed. Starting today, we must pick ourselves up, dust ourselves off, and begin again the work of remaking America. BREAK
    For everywhere we look, there is work to be done. The state of the economy calls for action, bold and swift, and we will act - not only to create new jobs, but to lay a new foundation for growth. We will build the roads and bridges, the electric grids and digital lines that feed our commerce and bind us together. We will restore science to its rightful place, and wield technology's wonders to raise health care's quality and lower its cost. We will harness the sun and the winds and the soil to fuel our cars and run our factories. And we will transform our schools and colleges and universities to meet the demands of a new age. All this we can do. And all this we will do. BREAK
    Now, there are some who question the scale of our ambitions - who suggest that our system cannot tolerate too many big plans. Their memories are short. For they have forgotten what this country has already done; what free men and women can achieve when imagination is joined to common purpose, and necessity to courage. BREAK
    What the cynics fail to understand is that the ground has shifted beneath them - that the stale political arguments that have consumed us for so long no longer apply. The question we ask today is not whether our government is too big or too small, but whether it works - whether it helps families find jobs at a decent wage, care they can afford, a retirement that is dignified. Where the answer is yes, we intend to move forward. Where the answer is no, programs will end. And those of us who manage the public's dollars will be held to account - to spend wisely, reform bad habits, and do our business in the light of day - because only then can we restore the vital trust between a people and their government. BREAK
    Nor is the question before us whether the market is a force for good or ill. Its power to generate wealth and expand freedom is unmatched, but this crisis has reminded us that without a watchful eye, the market can spin out of control - and that a nation cannot prosper long when it favors only the prosperous. The success of our economy has always depended not just on the size of our Gross Domestic Product, but on the reach of our prosperity; on the ability to extend opportunity to every willing heart - not out of charity, but because it is the surest route to our common good. BREAK
    As for our common defense, we reject as false the choice between our safety and our ideals. Our Founding Fathers, faced with perils we can scarcely imagine, drafted a charter to assure the rule of law and the rights of man, a charter expanded by the blood of generations. Those ideals still light the world, and we will not give them up for expedience's sake. And so to all other peoples and governments who are watching today, from the grandest capitals to the small village where my father was born: know that America is a friend of each nation and every man, woman, and child who seeks a future of peace and dignity, and we are ready to lead once more. BREAK
    Recall that earlier generations faced down fascism and communism not just with missiles and tanks, but with the sturdy alliances and enduring convictions. They understood that our power alone cannot protect us, nor does it entitle us to do as we please. Instead, they knew that our power grows through its prudent use; our security emanates from the justness of our cause, the force of our example, the tempering qualities of humility and restraint. BREAK
    We are the keepers of this legacy. Guided by these principles once more, we can meet those new threats that demand even greater effort - even greater cooperation and understanding between nations. We will begin to responsibly leave Iraq to its people, and forge a hard-earned peace in Afghanistan. With old friends and former foes, we’ll work tirelessly to lessen the nuclear threat, and roll back the specter of a warming planet. We will not apologize for our way of life, nor will we waver in its defense, and for those who seek to advance their aims by inducing terror and slaughtering innocents, we say to you now that our spirit is stronger and cannot be broken; you cannot outlast us, and we will defeat you. BREAK
    For we know that our patchwork heritage is a strength, not a weakness. We are a nation of Christians and Muslims, Jews and Hindus - and non-believers. We are shaped by every language and culture, drawn from every end of this Earth; and because we have tasted the bitter swill of civil war and segregation, and emerged from that dark chapter stronger and more united, we cannot help but believe that the old hatreds shall someday pass; that the lines of tribe shall soon dissolve; that as the world grows smaller, our common humanity shall reveal itself; and that America must play its role in ushering in a new era of peace. BREAK
    To the Muslim world, we seek a new way forward, based on mutual interest and mutual respect. To those leaders around the globe who seek to sow conflict, or blame their society's ills on the West - know that your people will judge you on what you can build, not what you destroy. To those who cling to power through corruption and deceit and the silencing of dissent, know that you are on the wrong side of history; but that we will extend a hand if you are willing to unclench your fist. BREAK
    To the people of poor nations, we pledge to work alongside you to make your farms flourish and let clean waters flow; to nourish starved bodies and feed hungry minds. And to those nations like ours that enjoy relative plenty, we say we can no longer afford indifference to the suffering outside our borders; nor can we consume the world's resources without regard to effect. For the world has changed, and we must change with it. BREAK
    As we consider the road that unfolds before us, we remember with humble gratitude those brave Americans who, at this very hour, patrol far-off deserts and distant mountains. They have something to tell us, just as the fallen heroes who lie in Arlington whisper through the ages. We honor them not only because they are guardians of our liberty, but because they embody the spirit of service; a willingness to find meaning in something greater than themselves. And yet, at this moment - a moment that will define a generation - it is precisely this spirit that must inhabit us all. BREAK
    For as much as government can do and must do, it is ultimately the faith and determination of the American people upon which this nation relies. It is the kindness to take in a stranger when the levees break, the selflessness of workers who would rather cut their hours than see a friend lose their job which sees us through our darkest hours. It is the firefighter's courage to storm a stairway filled with smoke, but also a parent's willingness to nurture a child, that finally decides our fate. BREAK
    Our challenges may be new. The instruments with which we meet them may be new. But those values upon which our success depends - honesty and hard work, courage and fair play, tolerance and curiosity, loyalty and patriotism - these things are old. These things are true. They have been the quiet force of progress throughout our history. What is demanded then is a return to these truths. What is required of us now is a new era of responsibility - a recognition, on the part of every American, that we have duties to ourselves, our nation, and the world, duties that we do not grudgingly accept but rather seize gladly, firm in the knowledge that there is nothing so satisfying to the spirit, so defining of our character, than giving our all to a difficult task. BREAK
    This is the price and the promise of citizenship. BREAK
    This is the source of our confidence - the knowledge that God calls on us to shape an uncertain destiny. BREAK
    This is the meaning of our liberty and our creed - why men and women and children of every race and every faith can join in celebration across this magnificent mall, and why a man whose father less than sixty years ago might not have been served at a local restaurant can now stand before you to take a most sacred oath. BREAK
    So let us mark this day with remembrance, of who we are and how far we have traveled. In the year of America's birth, in the coldest of months, a small band of patriots huddled by dying campfires on the shores of an icy river. The capital was abandoned. The enemy was advancing. The snow was stained with blood. At a moment when the outcome of our revolution was most in doubt, the father of our nation ordered these words be read to the people: BREAK
    \"Let it be told to the future world...that in the depth of winter, when nothing but hope and virtue could survive...that the city and the country, alarmed at one common danger, came forth to meet [it].\" BREAK
    America. In the face of our common dangers, in this winter of our hardship, let us remember these timeless words. With hope and virtue, let us brave once more the icy currents, and endure what storms may come. Let it be said by our children's children that when we were tested we refused to let this journey end, that we did not turn back nor did we falter; and with eyes fixed on the horizon and God's grace upon us, we carried forth that great gift of freedom and delivered it safely to future generations. BREAK
    Thank you. God bless you and God bless the United States of America.",
  date: "20090120"
  )

users[2].transcripts.create!(
  title: "Sanders - Presidential nnouncement",
  content: "Thank you all very very much for being out here today. Let me just make a brief comment and take a few questions. We don’t have an endless amount of time. I have to get back. BREAK
    Let me just say this. This country today in my view, has more serious crises than any time since the Great Depression of the 1930s. BREAK
    For most Americans, their reality is that they are working longer hours for lower wages. In inflation-adjusted income, they are earning less money than they used to, years ago, in spite a huge increase in technology and productivity. BREAK
    bernard sanders 2016 announcement speechSo, all over this country, I have been talking to people, and they say, “How does it happen? I’m producing more, but I’m working longer hours for lower wages. My kid can’t afford to go to college, and I’m having a hard time affording health care. What happened, while at exactly the same time, 99 percent of the income being generated in this country is going to the top 1 percent?” BREAK
    How does it happen that the top 1 percent owns almost as much wealth as the bottom 90 percent? And, my conclusion is that that type of economics is not only immoral, is wrong, it is unsustainable. It can’t continue. BREAK
    We can’t continue having a nation in which we have the highest rate of childhood poverty of any major nation on Earth, at the same time as we’re seeing a proliferation of millionaires and billionaires. BREAK
    So, that’s the major issue. The major issue is how do we create an economy that works for all of our people rather than a small number of billionaires, and the second issue, directly related, is the fact that as a result of the disastrous Supreme Court decision on Citizens United, we now have a political situation where billionaires are literally able to buy themselves elections and candidates. Let’s not kid ourselves. That is the reality right now. BREAK
    So, you’ve got the Koch Brothers and other billionaire families who are prepared to spend hundreds and hundreds of millions of dollars in elections to buy the candidates of their choice, often extreme right wing candidates. BREAK
    I am the former chairman of the Senate Veterans Committee, and I can tell you that I don’t believe that the men and women who defend American democracy fought to create a situation where American billionaires own the political process. That’s a huge issue that we’ve got to deal with. BREAK
    Right now, in terms of issues, we have a Republican Party that with few exceptions does not even recognize the reality of climate change, let alone that it is caused by human activity, let alone that the scientific community tells us that this is the major global environmental crisis that we face, and I want to see this nation lead the world in transforming our energy system away from fossil fuels, to energy efficiency and sustainable energy. BREAK
    Real unemployment in America is not five and a half percent, if you include those people who have given up looking for work, and people who are working part time when they want to work full time. Real unemployment is 11 percent. We need to create millions of jobs, and the best way to do it is to rebuild our crumbling infrastructure, and I’ve introduced legislation to do just that: Create and maintain 13 million jobs. BREAK
    In my state of Vermont, and throughout this country, young people, bright, young, able kids, cannot afford to go to college and are leaving school deeply in debt. In Germany, countries around the world, they understand that you tap the intellectual capabilities of young people, and you make college tuition in public colleges and universities free. That is my view as well. BREAK
    So, there are enormous issues facing this country. Let me conclude by saying this, and I say this to the media: I have never run a negative ad in my life. I have been in many campaigns, and you ask the people of Vermont, they will tell you, “Bernie Sanders has never run a negative ad. I hate and detest these 30 second ugly negative ads. BREAK
    I believe that in a democracy, what elections are about are serious debates about serious issues, not political gossip, not making campaign soap operas. This is not the Red Sox versus the Yankees. This is the debate over major issues facing the American people. BREAK
    Honest people, my conservative friends, differ with me. That’s fine. That’s called democracy. It’s a good thing, but I’ve got to hope, and I have to ask the media’s help on this thing: Allow us to discuss the important issues facing the American people. Let’s not get hung up on political soap opera, and all the other aspects of modern campaigns BREAK
    Thank you, and just let me take a few… BREAK
    [Question] BREAK
    Essentially, well, I’ll give you a detailed proposal right now. I regard it as unacceptable that you have major corporations in this country who make billions of dollars in profit who do not pay a nickel in federal income tax because, among other things, they stash their money in the Cayman Islands and Bermuda and other tax havens. BREAK
    The wealthiest people in this country and the largest corporations have got to join the United States of America. They’ve got to come back to this country, and they’ve got to maintain and respect their responsibilities, and their responsibilities are not to ship jobs to China. They responsibilities are not to avoid paying federal taxes. So, we need real tax reform that says to the wealthiest people and the largest corporations, you’re going to have to start paying your fair share. BREAK
    [Question] BREAK
    I owe my brother an enormous amount. I grew up in a family that did not have a lot of money. My dad came to this country at the age of 17, dropped out of high school, never made any money. My mother graduated high school. We didn’t have a whole lot of books in the house. It was my brother who actually introduced me to a lot of my ideas. So, I hope my brother does very well in his race for Parliament in the UK. BREAK
    [Question] BREAK
    Absolutely not. No, that’s a fair question, and let’s be clear. To say that people disagree on issues, and the point of these issues, that’s what a debate is about. That’s what democracy is about. So, no, certainly I would be doing that. BREAK
    What I’m saying is, you know this better than I do, is turn on these vicious 30-second ads, and vicious personal attacks against other candidates, I think the American people are sick and tired of it and I’ve never done it in my life. BREAK
    [Question] BREAK
    I think what is more fair game for my campaign is the role of money in politics. Where are the conflicts of interest, when the Koch brothers are going to be spending 900 million dollars in this campaign, making a lot of their money from fossil fuel, and having a platform which, as I understand it, calls for the elimination of Social Security and Medicare and Medicaid, ideas which are increasingly palatable to my Republican colleagues. That’s a conflict of interest. BREAK
    So, the issue here is not the Clinton Foundation. That’s a fair issue. The issue is the huge amounts of money that it takes to run a campaign today. BREAK
    And let me say this, and I say it honestly. One of the hesitancies that I had about deciding whether to run or not, is obviously about money. I’m not going to get money from the Koch brothers, and I’m not going to get money from billionaires. I’m going to have to raise my campaign contributions through BernieSanders.com, and small, individual contributions. That’s how I’m going to do it. BREAK
    But, I seriously wonder, and it’s not just Bernie Sanders, I wonder now, in this day and age, whether it is possible for any candidate who is not a billionaire, or who is not beholden to the billionaire class, to be able to run successful campaigns, and if that is the case, I want you all to recognize what a sad state of affairs that is for American democracy. BREAK
    [Question] BREAK
    It’s too early. We don’t know what Hillary’s stances are on all the issues, but this is what I can tell you, and maybe let me conclude on this: I voted against the war in Iraq, and not only did I vote against it. I helped lead the effort, and many of the things I said back then turned out to be true, I mean the massive destabilization in the region. BREAK
    I am helping right now to lead the effort against the TransPacific Partnership, because I believe it continues a trend of horrendous trade policies that have cost us millions of decent paying jobs. I helped lead the effort against the Keystone pipeline, because I don’t think we should be transporting some of the dirtiest fuel in the world, and we have to be really vigorous in terms of transforming the energy system. BREAK
    So, those are some of my views, and we’ll see where Secretary Clinton comes out. BREAK
    All right. With that, I have to get going. BREAK
    Last question. BREAK
    [Question] BREAK
    Oh, no, not at all. We are in this race to win. It’s not a question, but you’ve got to understand, I have asked people to understand my history. BREAK
    You are looking at a guy undisputably, who has the most unusual political history of anybody in the United States Congress. BREAK
    I have run, it’s not only that I am the longest serving independent in the history of he United States Congress, I have run for statewide office and I got one percent of the vote. I don’t know if I should be proud of that, but my last election, I got 71 percent of the vote. The point is, that’s not the right question. BREAK
    The question is, if you raise the issues that are on the hearts and minds of the American people, if you try to put a movement together that says, we have got to stand together as a people and say that, this capitol, this beautiful capitol, our country belonged to all of us, and not the billionaire class, that is not raising an issue. That is winning elections. That is where the American people are.",
  date: "20151110"
)
transcripts = Transcript.all


15.times do
  word = Faker::Number.between(1, 1000)
  word2 = word + 4
  transcripts.each { |transcript| transcript.annotations.create!(
    comment: Faker::Lorem.paragraphs(2).join(" "),
    link: "www.wikipedia.com",
    user_id: Faker::Number.between(1, 9),
    start: word,
    :end => word2
  ) }
end

User.create(
  name: "Deleteable User",
  email: "delete@gmail.com",
  password: "password",
  password_confirmation: "password",
  prof_pic_url: "",
  party_id: 3,
  city: "Delete",
  state: "CA",
  admin: false
)




