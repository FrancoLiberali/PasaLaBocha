<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="pasalabocha" />
        <g:set var="entityName" value="${message(code: 'descuentoPorTurnoAnterior.label', default: 'DescuentoPorTurnoAnterior')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-descuentoPorTurnoAnterior" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" controller="descuento" action="listar">Descuentos activos</g:link></li>
            </ul>
        </div>
        <div id="create-descuentoPorTurnoAnterior" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.descuentoPorTurnoAnterior}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.descuentoPorTurnoAnterior}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="guardar" name="createForm" method="POST">
                <fieldset class="form">
                    <label>Porcentaje de descuento: <input type="number" min="1" max="100" name="porcentaje" required></label><br>
                    <label>Nivel de confiabilidad necesario: <input type="number" min="0" step="1" name="nivelConfiabilidadNecesario" required></label><br>
                    <label>Aplicar descuento si no pasaron más de: <input type="number" min="1" step="1" name="horasRestantes" required/></label>horas desde el turno anterior<br>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="create" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
