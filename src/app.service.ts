import { Injectable } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';

@Injectable()
export class AppService {
  constructor(private config: ConfigService) {}
  getHello(): string {
    return `Hello server from ${this.config.get('NODE_ENV')} This has developed by sidrat`;
  }
}
