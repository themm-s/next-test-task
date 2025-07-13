import { Pool } from "@prisma/client";

export interface IModalDetailsProps extends IModalProps {
  pool: Pool;
}