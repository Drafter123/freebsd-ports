# $FreeBSD$

PORTNAME=	trytond_project_revenue
PORTVERSION=	2.4.1
CATEGORIES=	finance python
MASTER_SITES=	http://downloads.tryton.org/${PORTVERSION:R}/

MAINTAINER=	matthias@petermann.it
COMMENT=	Tryton Application Platform (Project Revenue Module)

LICENSE=	GPLv3

RUN_DEPENDS=	trytond>=2.4.0:${PORTSDIR}/finance/trytond \
		trytond_project>=2.4.0:${PORTSDIR}/finance/trytond_project \
		trytond_product>=2.4.0:${PORTSDIR}/finance/trytond_product

CONFLICTS=	trytond_project_revenue-2.[68].*

USE_PYTHON=	yes
USE_PYDISTUTILS=easy_install

.include <bsd.port.mk>
