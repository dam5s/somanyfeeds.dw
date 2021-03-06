<#-- @ftlvariable name="feeds" type="java.util.List<com.somanyfeeds.feedadmin.FeedView>" -->

<#import "layout/layout.ftl" as layout>
<@layout.adminLayout>
<h1>List of Feeds</h1>

<#list feeds as feed>
<dl class="card">
    <dt>Id</dt>
    <dd>${feed.id}</dd>
    <dt>Name</dt>
    <dd>${feed.name}</dd>
    <dt>Slug</dt>
    <dd>${feed.slug}</dd>
    <dt>Info</dt>
    <dd>${feed.info}</dd>
    <dt>Type</dt>
    <dd>${feed.type}</dd>

    <nav>
        <a href="/feeds/${feed.id}">View</a>
        <a href="/feeds/${feed.id}/edit">Edit</a>
    </nav>
</dl>
</#list>
</@layout.adminLayout>
