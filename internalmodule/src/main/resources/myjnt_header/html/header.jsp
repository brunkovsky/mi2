<%@include file="../../common/includes.jsp"%>
<%@ taglib prefix="myLangUtility" uri="http://www.my.org/tags/langUtilityLib" %>

<jcr:nodeProperty node="${currentNode}" name="logo" var="logo"/>
<jcr:nodeProperty node="${currentNode}" name="text" var="text"/>
<jcr:nodeProperty node="${currentNode}" name="additionalLogo" var="additionalLogo"/>

<table width="100%">
    <tr>
        <td><img src="${url.files}${logo.node.path}" width="100" height="100"/></td>
        <td>${myLangUtility:getExchangeRage()}</td>
        <td>${text}</td>
        <td><img src="${url.files}${additionalLogo.node.path}" width="100" height="100"/></td>
    </tr>
</table>



