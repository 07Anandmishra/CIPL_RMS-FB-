<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MRF Approval or Disapproval</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        .header {
            background-color: #007bff;
            color: #ffffff;
            padding: 15px;
            border-radius: 5px 5px 0 0;
            text-align: center;
        }
        .header h1 {
            margin: 0;
        }
        .content {
            margin-top: 15px;
        }
        .content p {
            margin-bottom: 10px;
            line-height: 1.5;
        }
        .content h2 {
            color: #777;
            margin-top: 0;
        }
        .button {
            display: inline-block;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            text-align: center;
            margin-top: 10px;
           
        }
        .button.approve {
            background-color: #28a745;
            color: #ffffff; 
        }
        .button.reject {
            background-color: #dc3545;
            color: #ffffff;
        }
        .disclaimer {
            margin-top: 25px;
            padding: 10px;
            color:  #777;
            font-size: 10px;
        }
        .disclaimer h4 {
            color: grey;
            margin-top: 0;
        }
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>MRF Approval or Disapproval</h1>
            <p>Subject: MRF <?php echo e($mrfNumber); ?> - Approval Status</p>
        </div>
        <div class="content">
            <p>Dear <b><?php echo e($projectManagerName); ?>,</b></p>
            <p><?php echo e($requesterName); ?> has generated the MRF for the <strong><?php echo e($position); ?></strong> for <strong><?php echo e($project); ?></strong>. You are requested to approve or reject it to proceed.</p>

            <h2>Status of MRF <?php echo e($mrfNumber); ?></h2>
            <p>The Manpower Requisition Form (MRF) <strong><?php echo e($mrfNumber); ?></strong> has been <strong><?php echo e($status); ?></strong>.</p>

            <?php if($status == 'Pending Approval'): ?>
                <p>To proceed with the MRF, please click one of the buttons below:</p>
                <a href="<?php echo e($approvalLink); ?>" class="button approve">Approve MRF</a>
                <a href="<?php echo e($rejectLink); ?>" class="button reject">Reject MRF</a>
            <?php else: ?>
                <p>Unfortunately, the MRF <?php echo e($mrfNumber); ?> has not been approved. Please review the feedback provided and consider resubmitting.</p>
            <?php endif; ?>

           
        </div>
        <div class="footer">
            <p><b>Best Regards,</b><br>
            <?php echo e($senderName); ?><br>
            <?php echo e($senderPosition); ?><br>
            <?php echo e($companyName); ?></p>
        </div>
        <div class="disclaimer">
                <h4>Disclaimer:</h4>
                <p>This email and any attachments are intended solely for the use of the individual or entity to whom they are addressed. This communication may contain confidential and/or privileged information. If you are not the intended recipient, please notify the sender immediately and delete this email from your system. Any unauthorized use, dissemination, copying, or disclosure of this email and its contents is strictly prohibited.</p>
                <p>For any concerns, please reach out to us at <a href="mailto:ta@cipl.org.in">ta@cipl.org.in</a></p>
            </div>
    </div>
</body>
</html>
<?php /**PATH D:\RMS\RMSAPI\resources\views/emails/mrfMail.blade.php ENDPATH**/ ?>