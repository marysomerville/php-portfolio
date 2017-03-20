    <main id="main_content">
    	<section id="about" class="wrapper load-first">
        	<h2>About Me</h2>
        	<p>I am a front-end web developer from Glasgow, Scotland. I love making things, I always have. As a kid I used to draw lots of gadgets that I could have in my room. So when I went to University I studied Multimedia Visualisation with Product Design, which gave me the opportunity to make things on and off the screen. I left university with the knowledge that a couple lines of code can make amazing things so began making websites. I have now worked as a front-end web developer for 7 years.</p>
            <p>When I'm not at work I like to try and do things outdoors in the fresh air. I cycle a lot, go walking and like to go for a swim to loosen off the shoulders. I regularly go to the cinema too, I like anything but horror movies! I enjoy playing games too, computer and board. I have been known to get seriously addicted to Minecraft. I love the simplicity of the game and being able to constantly work on something to make it better. I have the same attitude towards coding. Every site I do I try to put my best work into it. I'm not a fan of quick fixes and short cuts, I would rather work all night re-doing something if it was going to be beneficial in the long run.</p>
        </section>
        <section id="skills" class="wrapper fade">
            <h2>Skills</h2>
        	<div class="column">
            	<h3>Tools</h3>
                <ul>
                	<li>Regularly use Sublime, GitBash, SourceTree,</li>
                    <li>MySQL Workbench, Sequel Pro, Wamp, AMPPS, Filezilla &amp; Photoshop</li>
                </ul>
                <h3>Skills</h3>
                <ul>
                	<li>HTML, CSS, Sass, PHP &amp; MySQL, OOP</li>
                    <li>JavaScript &amp; using Jquery</li>
                    <li>Git, Compass, Gulp, npm, Composer, Susy.</li>
                    <li>Wordpress, Joomla</li>
                </ul>
            </div>
            <div class="column">
            	<h3>Experience</h3>
                <ul>
                    <li>Using HTML, CSS(Sass) and JavaScript to code responsive websites</li>
                    <li>Implementing server side technologies, PHP &amp; MySQL</li>
                    <li>Search engine optimization</li>
                    <li>Liaising with clients &amp; writing project briefs</li>
                    <li>CMS training sessions and writing help documentation</li>
                    <li>Creating holding pages</li>
                    <li>Designing, coding and sending email newsletters (Mailchimp)</li>
                    <li>Providing development timings based on designs to help with project timelines</li>
                    <li>Project management using Trello</li>
                </ul>
            </div>
        </section>
        <section id="work">
            <div class="wrapper fade">
                <h2>Work</h2>
                <p>Here is a selection of the website's I have worked on as a developer.</p>
            </div>
            <div class="gallery masonry_items">
                <div class="grid-sizer"></div>
                <div class="gutter-sizer"></div>
                <?php
                foreach ($projects as $item) {
                ?>
                    <div class="item fade">
                        <a href="/?page=project&project=<?=$item['id']?>">
                            <img src="images/projects/<?=$item['identifier']?>.jpg" alt="<?=$item['title']?> website preview" />
                            <div class="project_info">
                                <h3><?=$item['title']?></h3>
                                <p><?=$item['skills']?></p>
                            </div>
                        </a>
                    </div>
                <?php
                }
                ?>
            </div>
        </section>
    </main>