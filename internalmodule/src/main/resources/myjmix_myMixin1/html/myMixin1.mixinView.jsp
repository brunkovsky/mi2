<%@include file="../../common/includes.jsp"%>
<p>
    <c:forEach begin="0" end="${currentResource.moduleParams.count}">
        -
    </c:forEach>
    ${currentNode.propertiesAsString.text}
    <c:forEach begin="0" end="${currentResource.moduleParams.count}">
        -
    </c:forEach>
</p>
<p>-${currentResource.moduleParams.count}-</p>
