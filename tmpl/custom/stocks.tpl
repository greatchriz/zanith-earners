{include file="front/header.tpl"}


<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>User Friendly</h1>

            {* generate 5 long paragraghs for user friendly page*}
            {for $i=0 to 5}
                <p>
                    {loremipsum p1=5 p2=10 p3=15 p4=20}
                </p>
            {/for}

        </div>
    </div>

{include file="front/footer.tpl"}
