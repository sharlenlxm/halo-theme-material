<#include "module/macro.ftl">
<@layout title="搜索：${keyword} | ${options.blog_title!'Material'}" keywords="${options.seo_keywords!'Material'}}" description="${options.seo_description!'Material'}}">
    <!-- Index Module -->
    <div class="material-index mdl-grid">
        <#if (options.theme_material_scheme!'Paradox') == "Paradox" && posts.page==0 && !isArchives??>
        <!-- Paradox Header -->
        <#include "_partial/daily_pic.ftl">
        <#include "_partial/blog_info.ftl">
        </#if>
        <div class="locate-thumbnail-symbol"></div>
        <!-- Pin on top -->

        <!-- Normal Post -->
        <#if (options.theme_material_scheme!'Paradox') == "Paradox">
        <!-- Paradox Thumbnail -->
        <#include "_partial/Paradox-post_entry.ftl">
        <#else>
        <!-- Isolation Thumbnail -->
        <#include "_partial/Isolation-post_entry.ftl">
        </#if>
        <#if posts.pages gt 1 >
            <nav class="material-nav mdl-cell mdl-cell--12-col">
                <#if posts.hasPrevious()>
                    <#if posts.page == 1>
                        <a class="extend prev" rel="prev" href="${options.blog_url!}/search?keyword=${keyword}">
                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
                                <i class="material-icons" role="presentation">arrow_back</i>
                            </button>
                        </a>
                    <#else >
                        <a class="extend prev" rel="prev" href="${options.blog_url!}/search/page/${posts.page}?keyword=${keyword}">
                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
                                <i class="material-icons" role="presentation">arrow_back</i>
                            </button>
                        </a>
                    </#if>
                </#if>
                <span class="page-number current">${posts.page+1}</span>
                <#if posts.hasNext()>
                    <a class="extend next" rel="next" href="${options.blog_url!}/search/page/${posts.page+2}?keyword=${keyword}">
                        <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
                            <i class="material-icons" role="presentation">arrow_forward</i>
                        </button>
                    </a>
                </#if>
            </nav>
        </#if>
        <#if (options.theme_material_scheme!'Paradox') == "Paradox">
            <#include "_partial/Paradox-post_entry-thumbnail.ftl">
        </#if>
    </div>
</@layout>
