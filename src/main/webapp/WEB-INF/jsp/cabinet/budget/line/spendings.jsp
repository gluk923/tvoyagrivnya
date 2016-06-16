<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row margin-top-15" >
    <c:forEach var="line" items="${budget.spending}">
        <div class="result-list col-lg-12 text-center" style="background-color: #f3f3f3; border-radius: 5px;">
            <div class="col-lg-4">
                <span> ${line.category}</span>
            </div>
            <div class="col-lg-2" >
                <span> ${line.factMoney}</span>
            </div>
            <div class="col-lg-2">
                <span> ${line.line.money}</span>
            </div>
            <div class="col-lg-2">
                <c:choose>
                    <c:when test="${(line.diff eq 0) or (line.diff gt 0)}">
                        <span style="color:green">${line.diff}</span>
                    </c:when>
                    <c:otherwise>
                        <span >${line.diff}</span>
                    </c:otherwise>
                </c:choose>
            </div>
            <hr class="hr"/>

        </div>
    </c:forEach>
    <div class="result-list col-lg-12 text-center" >
        <div class="col-lg-4">
            <span> <i class="text-bold">Підсумок витрат</i></span>
        </div>
        <div class="col-lg-2" style="color: red">
            <span> ${budget.spendingTotal.fact}</span>
        </div>
        <div class="col-lg-2" style="color: red">
            <span> ${budget.spendingTotal.budget}</span>
        </div>
        <div class="col-lg-2">
            <c:choose>
                <c:when test="${(budget.spendingTotal.diff eq 0) or (budget.spendingTotal.diff gt 0)}">
                    <span style="color:green" >${budget.spendingTotal.diff}</span>
                </c:when>
                <c:otherwise>
                    <span style="color:red">${budget.spendingTotal.diff}</span>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>