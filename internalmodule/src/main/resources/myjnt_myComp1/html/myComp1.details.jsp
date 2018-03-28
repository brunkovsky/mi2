<%@include file="../../common/includes.jsp"%>

<c:set var="nodeToCopy" value="${currentNode.properties['nodeToCopy']}"/>

<h2>DETAILS</h2>
<p>-${currentNode}-</p>
<p>-${nodeToCopy.node}-</p>
<p>-${renderContext.request}-</p>
<p>-${renderContext.mainResource}-</p>
