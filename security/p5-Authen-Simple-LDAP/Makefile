# New ports collection makefile for:	Authen-Simple-LDAP
# Date created:				21 May 2006
# Whom:					Aaron Dalton <aaron@FreeBSD.org>
#
# $FreeBSD$
#

PORTNAME=	Authen-Simple-LDAP
PORTVERSION=	0.3
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Simple LDAP authentication

BUILD_DEPENDS=	p5-Authen-Simple>=0:${PORTSDIR}/security/p5-Authen-Simple \
		p5-perl-ldap>=0:${PORTSDIR}/net/p5-perl-ldap
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Authen::Simple::ActiveDirectory.3 \
		Authen::Simple::LDAP.3

.include <bsd.port.mk>
