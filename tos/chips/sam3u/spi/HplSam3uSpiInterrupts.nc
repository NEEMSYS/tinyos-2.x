/**
 * "Copyright (c) 2009 The Regents of the University of California.
 * All rights reserved.
 *
 * Permission to use, copy, modify, and distribute this software and its
 * documentation for any purpose, without fee, and without written agreement
 * is hereby granted, provided that the above copyright notice, the following
 * two paragraphs and the author appear in all copies of this software.
 *
 * IN NO EVENT SHALL THE UNIVERSITY OF CALIFORNIA BE LIABLE TO ANY PARTY FOR
 * DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES ARISING OUT
 * OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF THE UNIVERSITY
 * OF CALIFORNIA HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * THE UNIVERSITY OF CALIFORNIA SPECIFICALLY DISCLAIMS ANY WARRANTIES,
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.  THE SOFTWARE PROVIDED HEREUNDER IS
 * ON AN "AS IS" BASIS, AND THE UNIVERSITY OF CALIFORNIA HAS NO OBLIGATION TO
 * PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS."
 */

/**
 * Interface to control and query the SAM3U SPI interrupts.
 *
 * @author Thomas Schmid
 */

interface HplSam3uSpiInterrupts
{
    async event void receivedByte(uint8_t data);

    async event void transmitterReady();

    async command void disableAllUartIrqs();

    async event void enableRxFullIrq();
    async event void disableRxFullIrq();
    async event void isEnabledRxFullIrq();

    async event void enableTxDataEmptyIrq();
    async event void disableTxDataEmptyIrq();
    async event void isEnabledTxDataEmptyIrq();

    async event void enableModeFaultIrq();
    async event void disableModeFaultIrq();
    async event void isEnabledModeFaultIrq();

    async event void enableOverrunIrq();
    async event void disableOverrunIrq();
    async event void isEnabledOverrunIrq();

    async event void enableNssRisingIrq();
    async event void disableNssRisingIrq();
    async event void isEnabledNssRisingIrq();

    async event void enableTxEmptyIrq();
    async event void disableTxEmptyIrq();
    async event void isEnabledTxEmptyIrq();

    async event void enableUnderrunIrq();
    async event void disableUnderrunIrq();
    async event void isEnabledUnderrunIrq();
}
