{extends 'index.tpl'}

{block 'head' append}
    {css src='blog.scss' inline=true}
    {css src='hljs-github.css' inline=true}
{/block}

{block 'content'}
    <header class="banner banner__blog">
        {include 'helper/curve.tpl'}
    </header>
    <div class="content__blog">
        <div class="container">
            <article class="blog">
                {if isset($post.image)}
                    <img src="{$post.image.src}" srcset="{$post.image.srcset}" sizes="50vw" alt="{$post.image.title}">
                {/if}
                <h1>{$post.title}</h1>

                {$post.content}
            </article>

            <footer>
                <nav>
                    {if $browse.next}
                        <a class="prev cta cta--ghost" href="/blog/{$browse.next.id}">Previous post: {$browse.next.title}</a>
                    {/if}

                    {if $browse.prev}
                        <a class="next cta cta--ghost" href="/blog/{$browse.prev.id}">Continue reading: {$browse.prev.title}</a>
                    {/if}
                </nav>
                <nav class="center">
                    <a class="cta cta--link" href="/blog">Back to overview</a>
                </nav>
            </footer>
        </div>
    </div>
{/block}

{block 'footer'}{/block}

{block 'scripts'}
    {js src="js/codeClick.js" inline=true}
    {js src="/js/hljs.min.js" async=true}
{/block}