<%@include file="../../common/includes.jsp"%>

<c:set var="nodeToCopy" value="${currentNode.properties['nodeToCopy']}"/>

<p>-${currentNode}-</p>
<p>-${nodeToCopy.node}-</p>
<p>-${renderContext.mainResource}-</p>

<form action="<c:url value='${currentNode.path}.copyNode.do' context='${url.base}'/>" method="post">
    <label>
        <input type="text" name="text" />
    </label>
    <input type="submit" name="submit" value="submit"/>
    <input type="hidden" name="jcrRedirectTo" value="<c:url value='${renderContext.mainResource.node.path}' context='${url.base}'/>">
</form>

<p>--${param.key}==</p>
<p>--${key}==</p>
<p>--${param.key2}==</p>
<p>--${key2}==</p>
<p>--${param.key3}==</p>
<p>--${key3}==</p>
<p>--${param.key4}==</p>
<p>--${key4}==</p>
<template:include view="mixinView">
    <template:param name="count" value="4"/>
</template:include>

