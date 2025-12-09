declare module '@apiverve/emaildisposablechecker' {
  export interface emaildisposablecheckerOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface emaildisposablecheckerResponse {
    status: string;
    error: string | null;
    data: DisposableEmailCheckerData;
    code?: number;
  }


  interface DisposableEmailCheckerData {
      isDisposable: boolean;
      email:        string;
      domain:       string;
  }

  export default class emaildisposablecheckerWrapper {
    constructor(options: emaildisposablecheckerOptions);

    execute(callback: (error: any, data: emaildisposablecheckerResponse | null) => void): Promise<emaildisposablecheckerResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: emaildisposablecheckerResponse | null) => void): Promise<emaildisposablecheckerResponse>;
    execute(query?: Record<string, any>): Promise<emaildisposablecheckerResponse>;
  }
}
