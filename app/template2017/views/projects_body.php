    <div id="work_example">
        <article>
            <header>
                <div class="wrapper">
                    <div class="title">
                        <h1><?php echo $project['title']; ?></h1>
                        <h2><?php echo $project['dates']; ?> - <?php echo $project['type']; ?></h2>
                    </div>
                    <div class="skills">
                        <h3>Skills</h3>
                        <p><?php echo $project['skills']; ?></p>
                        <span><?php echo $project['link']; ?></span>
                    </div>
                </div>
            </header>
            <section class="example">
                <div class="text wrapper">
                    <div class="inner">
                        <h3>Project Description</h3>
                        <?php echo $project['description']; ?>
                    </div>
                </div>
                <div class="pic fade">
                    <img src="images/projects/<?php echo $project['identifier']; ?>/<?php echo $project['identifier']; ?>-1.jpg" alt="<?php echo $project['title']; ?> example" />
                </div>
                <div class="text wrapper fade">
                    <div class="inner">
                        <?php echo $project['description2']; ?>
                    </div>
                </div>
                <div class="pics fade">
                    <div class="example">
                        <img src="images/projects/<?php echo $project['identifier']; ?>/<?php echo $project['identifier']; ?>-2.jpg" alt="<?php echo $project['title']; ?> example 2" />
                    </div>
                    <div class="example">
                        <img src="images/projects/<?php echo $project['identifier']; ?>/<?php echo $project['identifier']; ?>-3.jpg" alt="<?php echo $project['title']; ?> example 3" />
                    </div>
                    <div class="example">
                        <img src="images/projects/<?php echo $project['identifier']; ?>/<?php echo $project['identifier']; ?>-4.jpg" alt="<?php echo $project['title']; ?> example 4" />
                    </div>
                </div>
                <div class="text wrapper fade">
                    <div class="inner">
                        <h3><a href="../#work">Back</a></h3>
                    </div>
                </div>
            </section>
        </article>
    </div>