# MEP App

## Overview
MEP(Metaverse Edu Platform)는 가상환경에서 교육 경험을 제공하는 웹 애플리케이션입니다.

## Prerequisites
- Docker
- Docker Compose

## 설치 및 실행 가이드

1. **환경 설정**
    ```bash
    cp .env.example .env
    ```
    `.env` 파일에서 다음 항목을 설정하세요:
    - Database 접속 정보
    - MySQL root 비밀번호
    - JWT secret key

2. **도메인 및 SSL 설정**
    - 도메인 설정:
      ```bash
      # docker-compose.yml 수정
      - YOUR_EMAIL=your@email.com
      - YOUR_DOMAIN=your-domain.com

      # nginx/nginx.conf 수정
      server_name your-domain.com;
      ```
    - 포트 개방:
      ```bash
      sudo ufw allow 80,443
      ```

3. **애플리케이션 실행**
    ```bash
    # 컨테이너 실행
    docker-compose up --build -d

    # SSL 인증서 발급
    docker-compose run --rm certbot certonly --webroot \
      -w /var/www/certbot \
      --email YOUR_EMAIL \
      -d YOUR_DOMAIN \
      --agree-tos
    ```

4. **SSL 인증서 자동 갱신 설정**
    ```bash
    # 갱신 스크립트 실행 권한 부여
    chmod +x renew-cert.sh
    
    # 매월 1일 새벽 3시에 자동 갱신 설정
    (crontab -l 2>/dev/null; echo "0 3 1 * * $(pwd)/renew-cert.sh") | crontab -
    ```

    필요한 경우 수동으로 인증서 갱신:
    ```bash
    ./renew-cert.sh
    ```

## API Documentation
Swagger UI: `http://localhost:8443/swagger-ui.html`
