<%@include file="../../common/includes.jsp"%>

<%@ taglib prefix="myLangUtility" uri="http://www.my.org/tags/langUtilityLib" %>

<jcr:nodeProperty node="${currentNode}" name="logo" var="logo"/>
<jcr:nodeProperty node="${currentNode}" name="text" var="text"/>
<jcr:nodeProperty node="${currentNode}" name="additionalLogo" var="additionalLogo"/>
<c:set value="${myLangUtility:getExchangeRage('USD')}" var="usdExchange"/>
<c:set value="${myLangUtility:getExchangeRage('EUR')}" var="eurExchange"/>

<div class="container">
    <div class="row">
        <c:if test="${not empty logo}">
            <div class="col-md-1">
                <img src="${url.files}${logo.node.path}" width="100" height="100"/>
            </div>
        </c:if>
        <c:if test="${not empty usdExchange and not empty eurExchange}">
            <div class="col-md-2">
                <c:if test="${not empty usdExchange}">
                    <p>USD = ${usdExchange}</p>
                </c:if>
                <c:if test="${not empty eurExchange}">
                    <p>EUR = ${eurExchange}</p>
                </c:if>
            </div>
        </c:if>
        <c:if test="${not empty text}">
            <div class="col-md-8">
                ${text}
            </div>
        </c:if>
        <c:if test="${not empty additionalLogo}">
            <div class="col-md-1">
                <img src="${url.files}${additionalLogo.node.path}" width="100" height="100"/>
            </div>
        </c:if>
    </div>
</div>
